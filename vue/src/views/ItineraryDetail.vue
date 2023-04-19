<template>
  <div
    id="app"
    class="min-h-screen w-screen bg-gray-200 flex flex-col items-start justify-start p-8"
  >
    <header>
      <h1 class="text-big">{{ name }}</h1>
      <div class="flex items-center py-2 mb-4 w-44">
        <t-datepicker
          v-model="date"
          :date-formatter="dateFormatter"
          :date-parser="dateParser"
          date-format="YYYY-MM-DD"
          user-format="M / D"
        >
        </t-datepicker>
      </div>
      <div>
        <button
          class="absolute right-36 top-32 bg-cyan-600 px-4 py-2 text-white rounded-lg"
          v-show="isEdited"
          @click="cancel()"
        >
          Save
        </button>
        <button
          class="absolute right-10 top-32 bg-gray-200 px-4 py-2 border border-gray-400 rounded-lg"
          v-show="isEdited"
          @click="cancel()"
        >
          Cancel
        </button>
      </div>
    </header>
    <div class="bg-gray-100 w-full h-full border-gray-400 border rounded-md">
      <h2 class="text-2xl mt-6 ml-6">Landmarks</h2>
      <draggable
        tag="ul"
        ghost-class="moving-card"
        filter=".action-button"
        class="w-full p-6"
        v-model="stops"
        :animation="200"
      >
        <li
          class="mb-3 h-32 flex items-center bg-white shadow rounded-lg cursor-move"
          v-for="(stop, index) in stops"
          v-bind:key="stop.id"
        >
          <div class="px-2 align-middle justify-center">
            <svg
              class="h-6 w-6 text-gray-600"
              width="24"
              height="24"
              viewBox="0 0 24 24"
              stroke-width="1"
              stroke="currentColor"
              fill="none"
              stroke-linecap="round"
              stroke-linejoin="round"
            >
              <path stroke="none" d="M0 0h24v24H0z" />
              <circle cx="5" cy="5" r="1" />
              <circle cx="12" cy="5" r="1" />
              <circle cx="19" cy="5" r="1" />
              <circle cx="5" cy="12" r="1" />
              <circle cx="12" cy="12" r="1" />
              <circle cx="19" cy="12" r="1" />
              <circle cx="5" cy="19" r="1" />
              <circle cx="12" cy="19" r="1" />
              <circle cx="19" cy="19" r="1" />
            </svg>
          </div>
          <div>
            <img
              class="rounded-md h-24 aspect-video w-max"
              :src="stop.heroImg"
              alt=""
            />
          </div>
          <div class="flex-col ml-6">
            <div class="text-2xl font-semibold">{{ stop.name }}</div>
            <div>{{ stop.address }}</div>
          </div>
          <div class="ml-auto mr-6">
            <button @click="remove(index)">
              <svg
                class="h-8 w-8 text-gray-600 hover:text-red-600"
                viewBox="0 0 24 24"
                fill="none"
                stroke="currentColor"
                stroke-width="1"
                stroke-linecap="round"
                stroke-linejoin="round"
              >
                <polyline points="3 6 5 6 21 6" />
                <path
                  d="M19 6v14a2 2 0 0 1-2 2H7a2 2 0 0 1-2-2V6m3 0V4a2 2 0 0 1 2-2h4a2 2 0 0 1 2 2v2"
                />
                <line x1="10" y1="11" x2="10" y2="17" />
                <line x1="14" y1="11" x2="14" y2="17" />
              </svg>
            </button>
          </div>
        </li>
      </draggable>
    </div>
  </div>
</template>

<script>
import itineraryService from "../services/ItineraryService";
import { mapActions } from "vuex";
import moment from "moment";

export default {
  data() {
    return {
      isEdited: true,
      refresh: true,
    };
  },

  created() {
    console.log("created");
    this.fetchItinerary(this.$route.params.id);
  },

  beforeRouteUpdate(to, from, next) {
    this.fetchItinerary(this.$route.params.id);
    next();
  },

  methods: {
    ...mapActions(["updateStops"]),
    ...mapActions(["updateName"]),
    ...mapActions(["updateDate"]),
    dateFormatter(date, format) {
      return moment(date).format(format);
    },
    dateParser(date, format) {
      return moment(date, format).toDate();
    },
    fetchItinerary(id) {
      itineraryService
        .getItinerary(id)
        .then((response) => {
          this.$store.commit("SET_CURRENT_ITINERARY", response.data);
        })
        .catch((error) => {
          if (error.response && error.response.status === 404) {
            alert(
              "Itinerary not available. This itinerary may have been deleted or you have entered an invalid ID."
            );
            this.$router.push({ name: "home" });
          }
        });
    },
    remove(index) {
      this.stops.splice(index, 1);
    },
    cancel() {
      this.$store.commit("SET_STOPS", this.$store.state.itinerary.landmarks);
    },
  },

  computed: {
    stops: {
      get() {
        return this.$store.state.itinerary.landmarks;
      },
      set(stops) {
        this.isEdited = true;
        this.$store.commit("SET_STOPS", stops);
      },
    },
    name: {
      get() {
        return this.$store.state.itinerary.name;
      },
      set(name) {
        this.isEdited = true;
        this.$store.commit("SET_NAME", name);
      },
    },
    date: {
      get() {
        return this.$store.state.itinerary.date;
      },
      set(date) {
        this.isEdited = this.$store.state.itinerary.date != date;
        this.$store.commit("SET_DATE", date);
      },
    },
  },
};
</script>

<style scoped>
.moving-card {
  @apply opacity-50 bg-gray-100 border border-blue-500;
}
</style>
