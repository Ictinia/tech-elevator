<template>
  <div
    id="app"
    class="min-h-screen w-screen flex flex-col items-start justify-start p-8 bg-gradient-to-tr from-cyan-200 to-green-200"
  >
    <header>
      <h1
        contenteditable
        class="text-big hover:bg-gray-300 w-fit"
        @blur="onEdit"
        v-text="name"
        @keydown.enter.prevent="$event.target.blur()"
        spellcheck="false"
        title="Edit Name"
      ></h1>
      <div class="flex items-center py-2 mb-4 w-44">
        <t-datepicker
          v-model="date"
          :date-formatter="dateFormatter"
          :date-parser="dateParser"
          date-format="YYYY-MM-DD"
          user-format="M / D"
          class="hover:bg-gray-300"
          title="Edit Date"
        >
        </t-datepicker>
      </div>
      <div class="absolute right-10 top-32">
        <button
          class="mr-2 px-5 py-2.5 relative rounded-lg group border border-cyan-600 overflow-hidden font-medium bg-cyan-500 text-white inline-block"
          v-show="isEdited"
          @click="
            save();
            isEdited = false;
          "
        >
          <span
            class="absolute top-0 left-0 flex w-full h-0 mb-0 transition-all duration-200 ease-out transform translate-y-0 bg-cyan-600 group-hover:h-full opacity-90"
          ></span>
          <span class="relative group-hover:text-white">Save</span>
        </button>
        <button
          class="px-5 py-2.5 relative rounded-lg group border border-gray-400 overflow-hidden font-medium bg-gray-300 text-gray-700 inline-block"
          v-show="isEdited"
          @click="
            cancel();
            isEdited = false;
          "
        >
          <span
            class="absolute top-0 left-0 flex w-full h-0 mb-0 transition-all duration-200 ease-out transform translate-y-0 bg-gray-400 group-hover:h-full opacity-90"
          ></span>
          <span class="relative group-hover:text-black">Cancel</span>
        </button>
      </div>
    </header>
    <div
      class="bg-gradient-to-tr from-gray-300 to-gray-100 w-full h-full border-gray-400 border rounded-md"
    >
      <div class="flex justify-between">
        <h2 class="text-2xl mt-6 ml-6">Landmarks</h2>
        <button class="py-2 px-4 bg-gray-500 mt-4 mr-6 rounded-lg text-white">
          Print Itinerary
        </button>
      </div>
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
          <div class="h-28 w-32 md:w-40 flex-shrink-0">
            <img
              class="rounded-md h-full w-40 max-w-36 object-cover"
              :src="stop.heroImg"
              alt=""
            />
          </div>
          <div class="flex-col ml-6">
            <div class="text-xl md:text-2xl font-semibold">{{ stop.name }}</div>
            <div class="text-md md:text-base">{{ stop.address }}</div>
          </div>
          <div class="ml-auto mr-2 md:mr-6">
            <button @click="remove(index)">
              <svg
                class="h-6 w-6 md:h-8 md:w-8 text-gray-600 hover:text-red-600"
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
import moment from "moment";

export default {
  data() {
    return {
      isEdited: false,
      refresh: true,
      deleteCard: false,
    };
  },

  created() {
    this.fetchItinerary(this.$route.params.id);
  },

  beforeRouteUpdate(to, from, next) {
    this.fetchItinerary(this.$route.params.id);
    next();
  },

  methods: {
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
      this.isEdited = true;
    },
    save() {
      itineraryService.updateItinerary(
        this.$route.params.id,
        this.$store.state.itinerary
      );
    },
    cancel() {
      this.fetchItinerary(this.$route.params.id);
    },
    onEdit(evt) {
      const src = evt.target.innerText;
      this.name = src;
      this.isEdited = true;
    },
  },

  computed: {
    stops: {
      get() {
        console.log("getstops");
        return this.$store.state.itinerary.landmarks;
      },
      set(stops) {
        console.log("setstops");
        this.isEdited = true;
        this.$store.commit("SET_STOPS", stops);
      },
    },
    name: {
      get() {
        console.log("getname");
        return this.$store.state.itinerary.name;
      },
      set(name) {
        console.log("setname");
        this.$store.commit("SET_NAME", name);
      },
    },
    date: {
      get() {
        console.log("getdate");
        return this.$store.state.itinerary.date;
      },
      set(date) {
        console.log("setdate");
        this.isEdited = this.$store.state.itinerary.date != date;
        this.$store.commit("SET_DATE", date);
      },
    },
  },

  unmounted() {
    this.isEdited = false;
  },
};
</script>

<style scoped>
.moving-card {
  @apply opacity-50 bg-gray-100 border border-blue-500;
}
</style>
