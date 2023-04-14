<template>
  <h2>
    Reviews

    <each-review />
  </h2>
</template>

<script>
import EachReview from "../components/EachReview.vue";

export default {
  components: {
    EachReview,
  },
};
</script>
