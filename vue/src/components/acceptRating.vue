<template>
  <div>
    <!-- This is where the like and dislike button will go -->
    <span>{{ count }}</span>
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
      count: 0,
    };
  },
  methods: {
    thumbsUp() {
      landmarkService
        .acceptRating({ rating: "up" })
        .then((response) => {
          this.count = response.data.count;
        })
        .catch((error) => {
          console.error(error);
        });
    },
    thumbsDown() {
      landmarkService
        .acceptRating({ rating: "down" })
        .then((response) => {
          this.count = response.data.count;
        })
        .catch((error) => {
          console.error(error);
        });
    },
  },
};
</script>
