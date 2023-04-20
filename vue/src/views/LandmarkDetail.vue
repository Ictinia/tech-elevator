<template>
  <div class="font-sans">
    <div class="relative bg-green-600">
      <img
        v-bind:src="this.$store.state.landmark.heroImg"
        class="absolute object-cover w-full h-full z-0"
        alt=""
      />

      <div class="relative bg-gray-900 bg-opacity-40 lg:h-[36rem] h-96 z-0">
        <p
          class="text-md font-semibold italic text-white pb-3 text-right absolute right-5 bottom-12 lg:bottom-16 lg:right-14"
        ></p>
        <div
          class="absolute left-5 bottom-5 lg:right-14 lg:bottom-8 flex-col mt-8 space-y-4 md:space-y-0 md:flex-row md:items-center md:space-x-2 md:mt-0"
        >
          <landmark-rating :landmark="landmark" />
        </div>
      </div>
      <div
        class="absolute flex sm:px-8 justify-center items-center p-2 lg:right-12 right-5 top-5 z-20 bg-white rounded-md border-[1px] border-gray-200 hover:border-blue-700 hover:border-[3px] hover:-m-[2px] hover:bg-gray-100 hover:cursor-pointer"
        @click="copyURL()"
      >
        <svg
          class="h-6 w-6 text-black"
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
          <circle cx="6" cy="12" r="3" />
          <circle cx="18" cy="6" r="3" />
          <circle cx="18" cy="18" r="3" />
          <line x1="8.7" y1="10.7" x2="15.3" y2="7.3" />
          <line x1="8.7" y1="13.3" x2="15.3" y2="16.7" />
        </svg>
        <p class="hidden sm:flex pl-2 text-sm">Share this location</p>
      </div>
    </div>
    <body>
      <div class="relative mx-8 md:mx-12 lg:mx-28 xl:mx-40 2xl:mx-64 mr-8">
        <section class="h-full align-middle">
          <section class="flex py-9 border-b-gray-300 border-b">
            <h1
              class="flex-[2_2_0%] text-3xl font-semibold left-0 text-gray-800"
            >
              {{ landmark.name }}

              <p class="flex-[2_2_0%] text-lg font-light left-0 text-gray-800">
                {{ landmark.address }}
              </p>
            </h1>

            <div class="flex-1 hidden md:flex items-center ml-1">
              <button
                class="flex-auto text-lg font-semibold w-full bg-cyan-600 border text-white rounded-lg px-4 leading-8 h-12 hover:bg-cyan-600/[0.9] z-10"
                @click="showModal = true"
              >
                Add to Itinerary
              </button>
            </div>
          </section>
          <div class="flex align-middle justify-center h-full md:mb-10">
            <section class="w-full md:w-2/3 text-md">
              <ul
                class="flex flex-wrap relative pb-4 overflow-auto pt-5 text-md items-center overflow"
              >
                <li class="flex pr-6">
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
                  <p class="flex items-center">Reviews</p>
                </li>
                <li class="flex pr-6">
                  <svg
                    class="flex h-7 w-7 text-cyan-600 pr-1"
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
                    <rect x="4" y="4" width="6" height="6" rx="1" />
                    <rect x="14" y="4" width="6" height="6" rx="1" />
                    <rect x="4" y="14" width="6" height="6" rx="1" />
                    <rect x="14" y="14" width="6" height="6" rx="1" />
                  </svg>
                  <p class="flex items-center">{{ landmark.category }}</p>
                </li>
                <li class="flex pr-6">
                  <svg
                    class="flex h-7 w-7 text-cyan-600 pr-1"
                    fill="none"
                    viewBox="0 0 24 24"
                    stroke="currentColor"
                  >
                    <path
                      stroke-linecap="round"
                      stroke-linejoin="round"
                      stroke-width="2"
                      d="M3 5a2 2 0 012-2h3.28a1 1 0 01.948.684l1.498 4.493a1 1 0 01-.502 1.21l-2.257 1.13a11.042 11.042 0 005.516 5.516l1.13-2.257a1 1 0 011.21-.502l4.493 1.498a1 1 0 01.684.949V19a2 2 0 01-2 2h-1C9.716 21 3 14.284 3 6V5z"
                    />
                  </svg>
                  <p class="flex items-center">{{ landmark.phone }}</p>
                </li>
              </ul>
              <div class="pt-2">
                <h2 class="text-lg font-semibold">About</h2>
                <p class="text-md pb-5">
                  {{ landmark.description }}
                </p>
              </div>
              <div class="mb-6">
                <table>
                  <tr
                    v-for="hour in this.$store.state.hours"
                    v-bind:key="hour.id"
                  >
                    <td id="day" class="font-semibold pr-3">
                      {{ hour.day_of_week }}
                    </td>
                    <td id="opening" class="text-right">
                      {{ hour.closed ? "Closed" : timeCheck(hour.opening) }}
                    </td>
                    <td id="sign">-</td>
                    <td id="closing">
                      {{ hour.closed ? "Closed" : timeCheck(hour.closing) }}
                    </td>
                  </tr>
                </table>
              </div>
            </section>
            <section
              class="md hidden md:flex !w-1/3 text-md aspect-square ml-2 my-5"
            >
              <iframe
                :src="this.$store.state.landmark.mapLink"
                class="h-full w-full rounded-xl bg-gray-300"
                referrerpolicy="no-referrer-when-downgrade"
              ></iframe>
            </section>
          </div>
          <div>
            <review-section v-bind:landmarkId="this.$route.params.id" />
          </div>

          <!-- Underneath is mobile map -->

          <div class="md:hidden">
            <iframe
              :src="this.$store.state.landmark.mapLink"
              class="mb-7 h-full w-full rounded-xl bg-gray-300"
              referrerpolicy="no-referrer-when-downgrade"
            ></iframe>
          </div>
          <div class="flex justify-center align-middle w-full">
            <button
              class="md:hidden text-lg mx-5 font-semibold w-full bg-cyan-600 border text-white rounded-lg px-4 leading-8 h-12 hover:bg-cyan-600/[0.9] z-10"
              @click="showModal = true"
            >
              Add to Itinerary
            </button>
          </div>
        </section>
      </div>
    </body>
    <Modal v-show="showModal" @close-modal="showModal = false" />
  </div>
</template>

<script>
import landmarkService from "../services/LandmarkService";
import reviewsService from "../services/ReviewsService";
import ReviewSection from "../components/ReviewSection.vue";
import LandmarkRating from "../components/LandmarkRating.vue";
import Modal from "../components/Modal.vue";

export default {
  data() {
    return {
      review: {
        title: "",
        description: "",
      },
      showModal: false,
    };
  },

  name: "landmark-detail",
  methods: {
    timeCheck(time) {
      let varied = "Varied";
      if (time == null) {
        return varied;
      } else {
        return time.substring(0, 5);
      }
    },
    async copyURL() {
      try {
        await navigator.clipboard.writeText(window.location.href);
        alert("Copied");
      } catch ($e) {
        alert("Cannot copy");
      }
    },
  },

  components: {
    ReviewSection,
    LandmarkRating,
    Modal,
  },
  created() {
    console.log("in created");
    landmarkService
      .getLandmark(this.$route.params.id)
      .then((response) => {
        this.$store.commit("SET_CURRENT_LANDMARK", response.data);
      })
      .catch((error) => {
        if (error.response && error.response.status === 404) {
          alert(
            "Card not available. This card may have been deleted or you have entered an invalid card ID."
          );
          this.$router.push({ name: "Home" });
        }
      });

    landmarkService.getOperating(this.$route.params.id).then((response) => {
      this.$store.commit("SET_LANDMARK_HOURS", response.data);
    });

    reviewsService.getAllReviews(this.$route.params.id).then((response) => {
      console.log("fetching reviews " + this.$route.params.id);
      this.$store.commit("SET_REVIEWS", response.data);
    });
  },
  computed: {
    landmark() {
      return this.$store.state.landmark;
    },
  },
  mounted() {
    window.scrollTo(0, 0);
  },
};
</script>
