<template>
  <div
    class="z-50 fixed top-0 bottom-0 left-0 right-0 flex justify-center bg-gray-200 bg-opacity-40"
    @click="close()"
  >
    <div
      class="text-center bg-white h-[420px] w-[500px] mt-[10%] py-16 rounded-2xl border"
      @click.stop
    >
      <button @click="close()" class="relative">
        <svg
          class="w-5 h-5 text-black dark:text-gray-400 absolute left-[212px] -top-16"
          width="24"
          height="24"
          viewBox="0 0 24 24"
          stroke-width="2"
          stroke="currentColor"
          fill="none"
          stroke-linecap="round"
          stroke-linejoin="round"
        >
          <path stroke="none" d="M0 0h24v24H0z" />
          <line x1="18" y1="6" x2="6" y2="18" />
          <line x1="6" y1="6" x2="18" y2="18" />
        </svg>
      </button>
      <div v-show="!landmarkAdded">
        <h6 class="text-3xl -mt-6">Add Landmark</h6>
        <p class="text-lg my-5">Please select itinerary to add landmark to</p>
        <form
          class="flex flex-col justify-center align-middle mx-10 mt-12"
          @submit.prevent="addLandmark()"
        >
          <select
            class="border border-gray-300 text-gray-600 h-10 pl-2 bg-white hover:border-gray-400 focus:outline-none"
            v-model="selected"
          >
            <option
              v-for="itinerary in itineraries"
              :key="itinerary.id"
              :value="itinerary.id"
              class=""
            >
              {{ itinerary.name }}
            </option>
          </select>

          <button
            class="bg-green-500 hover:bg-green-500/90 w-40 h-10 text-white text-md rounded-2xl mt-10 mx-auto"
          >
            Add
          </button>
        </form>
      </div>
      <div v-show="landmarkAdded">
        <h6 class="text-3xl my-5">Saved!</h6>
        <p class="text-lg my-5">Landmark has been added successfully</p>
        <button
          class="bg-green-500 w-40 h-10 text-white text-md rounded-2xl mt-12"
          @click="home()"
        >
          Go Home
        </button>
      </div>
    </div>
  </div>
</template>

<script>
import itineraryService from "../services/ItineraryService";
import landmarkService from "../services/LandmarkService";

export default {
  data() {
    return {
      landmarkAdded: false,
      selected: "",
      itineraries: this.$store.state.itineraries,
      landmarks: [],
      landmark: "",
    };
  },

  computed: {},

  created() {
    itineraryService.getUserItineraries().then((response) => {
      this.$store.commit("SET_ITINERARIES", response.data);
      return response.data;
    });

    landmarkService.getLandmark(this.$route.params.id).then((response) => {
      this.landmark = response.data;
    });
  },

  methods: {
    addLandmark() {
      itineraryService.getItinerary(this.selected).then((response) => {
        this.$store.commit("SET_CURRENT_ITINERARY", response.data);
        const landmarks = this.$store.state.itinerary.landmarks;

        if (landmarks.some((landmark) => landmark.id === this.landmark.id)) {
          return alert("Duplicate landmark!");
        } else {
          this.$store.state.itinerary.landmarks.push(this.landmark);
          itineraryService.updateItinerary(
            this.selected,
            this.$store.state.itinerary
          );
        }

        this.landmarkAdded = true;
      });
    },

    close() {
      this.$emit("close-modal");
      this.landmarkAdded = false;
    },

    home() {
      this.$emit("close-modal");
      this.$router.push({ name: "home" });
    },
  },
};
</script>

<style scoped>
.styled-select select {
  background-image: linear-gradient(45deg, transparent 50%, gray 50%),
    linear-gradient(135deg, gray 50%, transparent 50%),
    linear-gradient(to right, #ccc, #ccc);
  background-position: calc(100% - 20px) calc(1em + 2px),
    calc(100% - 15px) calc(1em + 2px), calc(100% - 2.5em) 0.5em;
  background-size: 5px 5px, 5px 5px, 1px 1.5em;
  background-repeat: no-repeat;
}
</style>
