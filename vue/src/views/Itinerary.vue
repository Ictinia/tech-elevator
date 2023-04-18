<template>
  <div>
    <itinerary-view
      v-if="$route.params.id"
      id="app"
      class="min-h-screen w-screen bg-gray-200 flex flex-col items-start justify-start"
    />
  </div>
</template>

<script>
import ItineraryView from "../components/ItineraryView.vue";
export default {
  components: { ItineraryView },
};
</script>
