<template>
  <div>
    <itinerary-sidebar />
    <itinerary-view :key="$route.fullPath" />
  </div>
</template>

<script>
import { mapGetters, mapActions } from "vuex";
import moment from "moment";
import ItinerarySidebar from "../components/ItinerarySidebar.vue";
import ItineraryView from "../components/ItineraryView.vue";

export default {
  components: { ItinerarySidebar, ItineraryView },
  data() {
    return {};
  },

  created() {
    this.$store.commit("SET_CURRENT_ITINERARY", this.itinerary_id);
  },

  updated() {
    this.$store.commit("SET_CURRENT_ITINERARY", this.itinerary_id);
  },

  methods: {
    ...mapActions(["updateStops"]),
    dateFormatter(date, format) {
      return moment(date).format(format);
    },
    dateParser(date, format) {
      return moment(date, format).toDate();
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
