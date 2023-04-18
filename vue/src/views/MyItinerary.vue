<template>
  <div class="flex">
    <itinerary-sidebar />
  </div>
</template>

<script>
import ItinerarySidebar from "../components/ItinerarySidebar.vue";
import itineraryService from "../services/ItineraryService";

import { mapGetters, mapActions } from "vuex";
import moment from "moment";

export default {
  components: { ItinerarySidebar },

  data() {
    return {
      itinerary: {
        itinerary_id: this.$store.state.itinerary.id,
        user_id: this.$store.state.itinerary.userId,
        name: this.$store.state.itinerary.name,
        date: this.$store.state.itinerary.date,
        landmarks: this.$store.state.itinerary.landmarks,
      },
    };
  },

  created() {
    itineraryService.getUserItineraries().then((response) => {
      this.$store.commit("SET_ITINERARIES", response.data);
      return response.data;
    });
  },

  methods: {
    ...mapActions(["updateStops"]),
    dateFormatter(date, format) {
      return moment(date).format(format);
    },
    dateParser(date, format) {
      return moment(date, format).toDate();
    },
    itineraryView(id) {
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
        this.$store.state.itinerary.date;
        return this.$store.state.itinerary.landmarks;
      },
      set(stops) {
        this.$store.commit("SET_STOPS", stops);
      },
    },
  },
};
</script>
