
<template>
  <div class="reviewSection">
    <h3 class="text-xl font-semibold">Reviews</h3>

    <button
      @click="showForm = true"
      v-if="!showForm"
      class="
        hover:bg-cyan-600/[0.9]
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
    >
      Add Review
    </button>

    <form @submit.prevent="addNewReview()" v-if="showForm === true">
      <div class="form-element">
        <input type="text" id="reviewer" v-model="newReview.reviewer" />
      </div>
      <div class="form-element">
        <label
          for="title"
          class="
            block
            mb-2
            pt-5
            text-md
            font-small
            text-gray-900
            dark:text-white
          "
        >
          Title:</label
        >

        <input
          id="title"
          type="text"
          rows="1"
          v-model="newReview.title"
          class="
            flex-auto
            block
            p-2.5
            w-full
            text-sm text-gray-900
            bg-gray-50
            rounded-lg
            outline
            none
            outline-cyan-600
            focus:ring-blue-500 focus:border-blue-500
            dark:bg-gray-700
            dark:border-gray-600
            dark:placeholder-gray-400
            dark:text-white
            dark:focus:ring-blue-500
            dark:focus:border-blue-500
          "
        />
      </div>

      <div class="form-element">
        <label
          for="message"
          class="
            block
            mb-2
            pt-5
            text-md
            font-small
            text-gray-900
            dark:text-white
          "
          >Description:
        </label>

        <textarea
          id="message"
          rows="4"
          v-model="newReview.description"
          class="
            flex-auto
            block
            p-2.5
            w-full
            text-sm text-gray-900
            bg-gray-50
            rounded-lg
            outline
            none
            outline-cyan-600
            focus:ring-blue-500 focus:border-blue-500
            dark:bg-gray-700
            dark:border-gray-600
            dark:placeholder-gray-400
            dark:text-white
            dark:focus:ring-blue-500
            dark:focus:border-blue-500
          "
          placeholder="Leave a comment..."
        ></textarea>
      </div>
      <input
        type="submit"
        value="Save"
        class="
          hover:bg-cyan-600/[0.9]
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
        class="
          bg-cyan-600
          hover:bg-cyan-600/[0.9]
          outline-grey
          text-white
          font-bold
          py-2
          px-4
          rounded
        "
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
import ReviewsService from "../services/ReviewsService";
// import EachReview from "../components/EachReview.vue";

export default {
  name: "review-section",
  data() {
    return {
      showForm: false,
      newReview: {},
    };
  },

  props: ["landmarkId"],

  created() {
    console.log(this.$store.state.reviews);
  },

  methods: {
    addNewReview() {
      console.log("landmarkId: " + this.landmarkId);
      ReviewsService.addReview(this.landmarkId, this.newReview)
        .then(() => {
          return ReviewsService.getReviews(this.landmarkId);
        })
        .then((response) => {
          this.$store.commit("SET_REVIEWS", response.data);
          this.resetForm();
        });
    },
    resetForm() {
      this.showForm = false;
      this.newReview = {};
    },
  },

  // this.reviews.unshift(this.newReview);
  // this.resetForm();
  resetForm() {
    this.newReview = {};
    this.showForm = false;
  },
};
</script>
