<template>
  <div
    id="app"
    class="min-h-screen w-screen bg-gray-200 flex flex-col items-start justify-start p-8"
  >
    <header>
      <h1 class="text-big">{{ this.$store.state.itinerary.name }}</h1>
      <div class="flex items-center py-2 mb-4 w-44">
        <t-datepicker
          v-model="this.$store.state.itinerary.date"
          :date-formatter="dateFormatter"
          :date-parser="dateParser"
          date-format="YYYY-MM-DD"
          user-format="M / D"
        >
        </t-datepicker>
      </div>
    </header>
    <draggable
      tag="ul"
      ghost-class="moving-card"
      filter=".action-button"
      class="w-full max-w-md"
      v-model="stops"
      :animation="200"
    >
      <li
        class="p-4 mb-3 flex justify-between items-center bg-white shadow rounded-lg cursor-move"
        v-for="stop in stops"
        v-bind:key="stop.landmark_id"
      >
        {{ stop.name }}
      </li>
    </draggable>
  </div>
</template>

<script>
import itineraryService from "../services/ItineraryService";
import { mapGetters, mapActions } from "vuex";
import moment from "moment";

export default {
  data() {
    return {};
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
  },

  computed: {
    ...mapGetters(["getStops"]),
    stops: {
      get() {
        return this.$store.state.itinerary.landmarks;
      },
      set(stops) {
        this.$store.commit("SET_STOPS", stops);
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
