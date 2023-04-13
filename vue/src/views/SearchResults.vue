<template>
  <div class="flex">
    <landmarkCard
      v-for="landmark in searchLandmarks"
      v-bind:key="landmark.id"
      v-bind:landmark="landmark"
    >
    </landmarkCard>
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