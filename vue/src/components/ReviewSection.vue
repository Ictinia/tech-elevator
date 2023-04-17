<template>
  <div class="reviewSection">
    <h3 class="text-xl font-semibold">Reviews</h3>

    <div @click="showForm = true" v-if="!showForm">Add Review</div>
    <form @submit.prevent="addNewReview()" v-if="showForm === true">
      <div class="form-element">
        <input type="text" id="reviewer" v-model="newReview.reviewer" />
      </div>
      <div class="form-element">
        <label for="title" type="button"> Title:</label>
        <input
          id="title"
          type="text"
          v-model="newReview.title"
          class="
            flex-auto
            text-lg
            font-semibold
            outline-cyan-600
            border
            text-white
            rounded-lg
            px-8
            leading-8
            h-12
            hover:white
            z-10
            space-x-5
          "
        />
      </div>

      <div class="form-element">
        <label for="review">Review: </label>
        <textarea
          id="review"
          v-model="newReview.review"
          class="
            flex-auto
            text-lg
            font-semibold
            outline-cyan-600
            border-cyan-600
            text-white
            rounded-lg
            px-8
            leading-8
            h-12
            hover:white
            z-10
            space-x-5
          "
        ></textarea>
      </div>
      <input
        type="submit"
        value="Save"
        class="
          bg-cyan-600
          outline-grey
          text-white
          font-bold
          py-2
          px-6
          rounded
          margin-right
          m-5
        "
      />
      <input
        type="button"
        value="Cancel"
        @click="resetForm()"
        class="bg-cyan-600 outline-grey text-white font-bold py-2 px-4 rounded"
      />
    </form>

    <ol class="list-inside">
      <li
        v-for="review in this.$store.state.reviews"
        :key="review.id"
        class="mb-6"
      >
        <div class="flex items-center">
          <svg
            class="h-7 w-7 text-cyan-600 pr-1"
            fill="none"
            viewBox="0 0 24 24"
            stroke="currentColor"
          >
            <path
              stroke-linecap="round"
              stroke-linejoin="round"
              stroke-width="2"
              d="M17 8h2a2 2 0 012 2v6a2 2 0 01-2 2h-2v4l-4-4H9a1.994 1.994 0 01-1.414-.586m0 0L11 14h4a2 2 0 002-2V6a2 2 0 00-2-2H5a2 2 0 00-2 2v6a2 2 0 002 2h2v4l.586-.586z"
            />
          </svg>
          <h3 class="text-l font-semibold">{{ review.title }}</h3>
        </div>
        <p class="text-gray-550">{{ review.description }}</p>
      </li>
    </ol>
  </div>
</template>

<script>
// import EachReview from "../components/EachReview.vue";

export default {
  name: "landmark-review",
  data() {
    return {
      name: "Cigar Parties for Dummies",
      showForm: false,
      newReview: {},
    };
  },

  created() {
    console.log(this.$store.state.reviews);
  },

  methods: {
    addNewReview() {
      this.reviews.unshift(this.newReview);
      this.resetForm();
    },
    resetForm() {
      this.newReview = {};
      this.showForm = false;
    },
  },
};
</script>