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
              <div class="flex flex-row items-center h-8 border-b">
                <div class="text-sm font-light tracking-wide text-gray-500">
                  Overview
                </div>
              </div>
            </li>
            <li>
              <a
                href="#"
                class="relative flex flex-row items-center h-11 focus:outline-none hover:bg-gray-50 text-gray-600 hover:text-gray-800 border-l-4 border-transparent hover:border-indigo-500 pr-6"
                v-for="itinerary in this.$store.state.itineraries"
                v-bind:key="itinerary.id"
              >
                <span class="ml-4 text-md tracking-wide truncate">{{
                  itinerary.name
                }}</span>
              </a>
            </li>
          </ul>
        </div>
      </div>
    </div>
    <div
      id="app"
      class="min-h-screen w-screen bg-gray-200 flex flex-col items-center justify-center"
    >
      <header>
        <h1 class="text-big">Name of tour</h1>
        <div class="flex w-full items-center py-2 mb-4">
          <datepicker
            :minimumView="'day'"
            :maximumView="'month'"
            :initialView="'month'"
            :format="customFormatter"
          >
            <span
              slot="afterDateInput"
              class="w-full font-extrabold tracking-tighter outline-none border-none"
            >
            </span>
          </datepicker>
        </div>
      </header>
      <draggable
        tag="ul"
        ghost-class="moving-card"
        filter=".action-button"
        class="w-full max-w-md"
        :list="users"
        :animation="200"
      >
        <li
          v-for="user in users"
          :key="user.id"
          class="p-4 mb-3 flex justify-between items-center bg-white shadow rounded-lg cursor-move"
        >
          {{ user.name }}
        </li>
      </draggable>
    </div>
  </div>
</template>

<script>
import itineraryService from "../services/ItineraryService";
import Draggable from "vuedraggable";
import Datepicker from "vuejs-datepicker";

export default {
  data() {
    return {
      users: [
        {
          id: 1,
          name: "Adrian Schubert",
          avatar:
            "https://pickaface.net/gallery/avatar/unr_sample_161118_2054_ynlrg.png",
        },
        {
          id: 2,
          name: "Violet Gates",
          avatar: "https://pickaface.net/gallery/avatar/freud51c8b3f65e7dc.png",
        },
        {
          id: 3,
          name: "Steve Jobs",
          avatar: "https://pickaface.net/gallery/avatar/Opi51c74d0125fd4.png",
        },
        {
          id: 4,
          name: "Yassine Smith",
          avatar:
            "https://pickaface.net/gallery/avatar/unr_yassine_191124_2012_3gngr.png",
        },
        {
          id: 5,
          name: "Senior Saez",
          avatar:
            "https://pickaface.net/gallery/avatar/elmedinilla541c03412955c.png",
        },
      ],
    };
  },

  components: {
    Draggable,
    Datepicker,
  },

  created() {
    itineraryService.getUserItineraries().then((response) => {
      this.$store.commit("SET_ITINERARIES", response.data);
    });
  },
};
</script>

<style scoped>
.moving-card {
  @apply opacity-50 bg-gray-100 border border-blue-500;
}
</style>
