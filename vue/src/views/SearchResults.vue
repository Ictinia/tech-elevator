<template>
  <div class="mx-8 md:mx-12 lg:mx-28 xl:mx-40 2xl:mx-64 mt-10">
    <div>
      <h1 class="text-2xl font-semibold">Here's what we found:</h1>
    </div>
    <div class="flex flex-wrap relative gap-x-4 gap-y-8 my-5 w-full">
      <landmarkCard
        v-for="landmark in filteredLandmarks"
        v-bind:key="landmark.id"
        v-bind:landmark="landmark"
      >
      </landmarkCard>
    </div>
  </div>
</template>

<script>
import landmarkCard from "../components/LandmarkCard.vue";
import landmarkService from "../services/LandmarkService.js";

export default {
  name: "search-results",
  components: { landmarkCard },
  data() {
    return {
      filteredLandmarks: [],
    };
  },
  methods: {
    loadLandmarks(searchTerm) {
      landmarkService
        .filterLandmarks(searchTerm)
        .then((resp) => (this.filteredLandmarks = resp.data));
    },
  },
  computed: {
    searchTerm() {
      return this.$route.query.term;
    },
  },
  created() {
    console.log("in created");
    this.loadLandmarks(this.searchTerm);
  },
  beforeRouteUpdate(to, from, next) {
    console.log("in bru");
    // the 'to' parameter is a route object for the route we are trying to navigate to
    this.loadLandmarks(to.query.term);
    next();
  },
};
</script>

<style scoped>
</style>