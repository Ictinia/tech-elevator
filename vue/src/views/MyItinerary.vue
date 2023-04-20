<template>
  <div class="flex bg-gradient-to-tr from-cyan-200 to-green-200">
    <div
      id="sidebar"
      class="hidden md:flex flex-col flex-auto flex-shrink-0 antialiased text-gray-800"
    >
      <div
        class="bg-opacity-70 relative flex flex-col top-0 left-0 w-64 bg-white h-full border-r"
      >
        <div class="overflow-y-auto overflow-x-hidden flex-grow">
          <ul class="flex flex-col py-4 space-y-1">
            <li class="px-5">
              <router-link :to="{ name: 'my-itinerary' }">
                <div class="flex flex-row items-center h-8 border-b">
                  <div
                    class="text-md font-semibold tracking-wide text-gray-500"
                  >
                    Itineraries
                  </div>
                </div>
              </router-link>
            </li>
            <li
              v-for="(itinerary, index) in itineraries"
              v-bind:key="itinerary.id"
              class="flex justify-between"
            >
              <router-link
                :to="{ name: 'itinerary-view', params: { id: itinerary.id } }"
                class="flex z-20 content-center w-full"
              >
                <a
                  class="relative justify-between flex flex-row w-full items-center h-11 focus:outline-none hover:bg-gray-50 text-gray-600 hover:text-gray-800 border-l-4 border-transparent hover:border-indigo-500 pr-4"
                >
                  <span class="ml-4 text-md tracking-wide truncate">{{
                    itinerary.name
                  }}</span>
                </a>
              </router-link>
              <button @click="remove(index)" class="relative right-4 z-30">
                <svg
                  class="h-6 w-6 text-gray-600 hover:text-red-600"
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
            </li>
          </ul>
        </div>
      </div>
    </div>
    <!-- Mobile -->
    <div
      class="fixed inset-0 flex z-40 md:hidden"
      :class="[open ? 'w-screen' : 'w-0']"
    >
      <!-- Sidebar -->
      <div
        class="absolute flex h-screen z-20"
        :class="[right ? 'right-0 flex-row' : 'left-0 flex-row-reverse']"
      >
        <!--Drawer -->
        <button
          @click.prevent="toggle()"
          class="sticky top-36 py-1 h-10 mt-12 rounded bg-gray-100/80 text-white text-center focus:outline-none hover:bg-gray-300 transition-color duration-300"
        >
          <span
            class="block transform origin-center font-bold"
            :class="[open ? 'rotate-180' : 'rotate-0']"
          >
            <svg
              class="h-7 w-7 text-blue-600"
              viewBox="0 0 24 24"
              fill="none"
              stroke="currentColor"
              stroke-width="2"
              stroke-linecap="round"
              stroke-linejoin="round"
            >
              <polyline points="13 17 18 12 13 7" />
              <polyline points="6 17 11 12 6 7" />
            </svg>
          </span>
        </button>

        <!-- Sidebar Content -->
        <div
          ref="content"
          class="transition-all w-56 duration-600 bg-white overflow-hidden flex justify-center"
          :class="[open ? 'max-w-2xl' : 'max-w-0']"
        >
          <ul class="flex flex-col py-4 space-y-1 w-full" @click="toggle()">
            <li class="px-5">
              <router-link :to="{ name: 'my-itinerary' }">
                <div class="flex flex-row items-center h-8 border-b">
                  <div
                    class="text-md font-semibold tracking-wide text-gray-500"
                  >
                    Itineraries
                  </div>
                </div>
              </router-link>
            </li>
            <li
              v-for="(itinerary, index) in itineraries"
              v-bind:key="itinerary.id"
              class="flex justify-between"
            >
              <router-link
                :to="{ name: 'itinerary-view', params: { id: itinerary.id } }"
                class="flex z-20 content-center w-full"
              >
                <a
                  class="relative justify-between flex flex-row w-full items-center h-11 focus:outline-none hover:bg-gray-50 text-gray-600 hover:text-gray-800 border-l-4 border-transparent hover:border-indigo-500 pr-4"
                >
                  <span class="ml-4 text-md tracking-wide truncate">{{
                    itinerary.name
                  }}</span>
                </a>
              </router-link>
              <button @click="remove(index)" class="relative right-4 z-30">
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
            </li>
          </ul>
        </div>
      </div>

      <transition name="fade">
        <!-- Dimmer -->
        <div
          v-show="open"
          @click="toggle()"
          class="flex-1 active:outline-none bg-gray-700/60 z-10"
        />
      </transition>
    </div>
    <div class="absolute left-10 md:left-72 top-28 z-0">
      <img src="../assets/pickone.png" />
    </div>
    <router-view :key="$route.fullPath" class="z-30" />
  </div>
</template>

<script>
import itineraryService from "../services/ItineraryService";

export default {
  data() {
    return {
      sidebar: false,
      open: false,
      dimmer: true,
      right: false,
    };
  },

  methods: {
    toggle() {
      this.open = !this.open;
    },
    remove(index) {
      if (
        confirm(
          "Are you sure you want to delete this itinerary? This action cannot be undone."
        )
      ) {
        this.itineraries.splice(index, 1);
        itineraryService.deleteItinerary(this.itineraries[index].id);
      }
    },
  },

  computed: {
    itineraries: {
      get() {
        console.log("getstops");
        return this.$store.state.itineraries;
      },
    },
  },

  created() {
    console.log("Hello");
    itineraryService.getUserItineraries().then((response) => {
      this.$store.commit("SET_ITINERARIES", response.data);
      return response.data;
    });
  },
};
</script>
