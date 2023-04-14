<template>
  <div class="mx-8 md:mx-12 lg:mx-28 xl:mx-40 2xl:mx-64 mt-10">
    <div>
      <h1 class="text-2xl font-semibold">Here's what we found:</h1>
    </div>
    <div
      class="
        flex
        relative
        gap-x-4 gap-y-8
        my-5
        w-full
        overflow-x-auto
        no-scrollbar
      "
    >
      <landmarkCard
        v-for="landmark in searchLandmarks"
        v-bind:key="landmark.id"
        v-bind:landmark="landmark"
      >
      </landmarkCard>
    </div>
  </div>
</template>

<script>
import landmarkCard from "../components/LandmarkCard.vue";

export default {
  name: "search-results",
  components: { landmarkCard },
  data() {
    return {};
  },
  methods: {},
  computed: {
    searchTerm() {
      return this.$route.query.term;
    },
    searchLandmarks() {
      return this.$store.state.landmarks.filter((l) => {
        return l.name.toLowerCase().includes(this.searchTerm.toLowerCase());
      });
    },
  },
};
</script>

<style>
</style>