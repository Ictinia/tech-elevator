<template>
  <div class="flex">
    <div
      id="sidebar"
      class="h-full min-h-full flex flex-col flex-auto flex-shrink-0 antialiased bg-gray-50 text-gray-800"
    >
      <div
        class="relative flex flex-col top-0 left-0 w-64 bg-white h-full border-r"
      >
        <div class="overflow-y-auto overflow-x-hidden flex-grow">
          <ul class="flex flex-col py-4 space-y-1">
            <li class="px-5">
              <router-link :to="{ name: 'my-itinerary' }">
                <div class="flex flex-row items-center h-8 border-b">
                  <div class="text-sm font-light tracking-wide text-gray-500">
                    Overview
                  </div>
                </div>
              </router-link>
            </li>
            <li>
              <router-link
                v-for="itinerary in this.$store.state.itineraries"
                v-bind:key="itinerary.id"
                :to="{ name: 'itinerary-view', params: { id: itinerary.id } }"
              >
                <a
                  class="relative flex flex-row items-center h-11 focus:outline-none hover:bg-gray-50 text-gray-600 hover:text-gray-800 border-l-4 border-transparent hover:border-indigo-500 pr-6"
                >
                  <span class="ml-4 text-md tracking-wide truncate">{{
                    itinerary.name
                  }}</span>
                </a>
              </router-link>
            </li>
          </ul>
        </div>
      </div>
    </div>
    <router-view :key="$route.fullPath" />
    <!-- <itinerary-view
      v-if="$route.params.id"
      id="app"
      class="min-h-screen w-screen bg-gray-200 flex flex-col items-start justify-start"
    /> -->
  </div>
</template>

<script>
import itineraryService from "../services/ItineraryService";

export default {
  components: {},

  created() {
    console.log("Hello");
    itineraryService.getUserItineraries().then((response) => {
      this.$store.commit("SET_ITINERARIES", response.data);
      return response.data;
    });
  },
};
</script>
