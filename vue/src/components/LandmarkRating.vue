<template>
  <div>
    <button
      @click="countUp++"
      :landmarkId="landmarkId"
      type="button"
      class="
        text-white
        bg-cyan-600
        hover:bg-cyan-700
        focus:ring-4 focus:outline-none focus:ring-blue-300
        font-medium
        rounded-lg
        text-sm
        p-1.5
        text-center
        inline-flex
        items-center
        mr-2
      "
    >
      <svg
        class="h-8 w-16 text-white"
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
        <path
          d="M7 11v 8a1 1 0 0 1 -1 1h-2a1 1 0 0 1 -1 -1v-7a1 1 0 0 1 1 -1h3a4 4 0 0 0 4 -4v-1a2 2 0 0 1 4 0v5h3a2 2 0 0 1 2 2l-1 5a2 3 0 0 1 -2 2h-7a3 3 0 0 1 -3 -3"
        />
      </svg>
      <span>{{ countUp }}</span>
      <span class="sr-only">Icon description</span>
    </button>
    <button
      @click="countDown--"
      :landmarkId="landmarkId"
      type="button"
      class="
        text-white
        bg-red-700
        hover:bg-red-800
        focus:ring-4 focus:outline-none focus:ring-red-300
        font-medium
        rounded-lg
        text-sm
        p-1.5
        text-center
        inline-flex
        items-center
        mr-2
      "
    >
      <svg
        class="h-8 w-16 text-white"
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
        <path
          d="M7 13v-8a1 1 0 0 0 -1 -1h-2a1 1 0 0 0 -1 1v7a1 1 0 0 0 1 1h3a4 4 0 0 1 4 4v 1a2 2 0 0 0 4 0v-5h3a2 2 0 0 0 2 -2l-1 -5a2 3 0 0 0 -2 -2h-7a3 3 0 0 0 -3 3"
        />
      </svg>
      <span>{{ countDown }}</span>
      <span class="sr-only">Icon description</span>
    </button>
  </div>
</template>

<script>
import landmarkService from "../services/LandmarkService.js";

export default {
  props: {
    landmarkId: {
      type: Number,
      required: true,
    },
  },
  data() {
    return {
      countUp: 0,
      countDown: 0,
    };
  },
  methods: {
    thumbsUp() {
      landmarkService
        .saveRating(this.landmarkId, { rating: "up" })
        .then((response) => {
          this.countUp = response.data.countUp;
        })
        .catch((error) => {
          console.error(error);
        });
    },
    thumbsDown() {
      landmarkService
        .saveRating(this.landmarkId, { rating: "down" })
        .then((response) => {
          this.countDown = response.data.countDown;
        })
        .catch((error) => {
          console.error(error);
        });
    },
  },
};
</script>
