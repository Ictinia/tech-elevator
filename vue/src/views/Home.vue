<template>
  <div class="font-sans">
    <div class="relative bg-green-600">
      <img
        src="https://www.tpl.org/wp-content/uploads/2021/05/8_2021_Cincinnati-Ohio_header.jpg"
        class="absolute object-cover w-full h-full z-0"
        alt=""
      />
      <div class="relative bg-gray-900 bg-opacity-40 lg:h-[36rem] h-96 z-0">
        <div class="flex h-full w-full justify-center align-middle">
          <h2 class="text-center text-4xl text-white pt-40">
            Plan a tour in Cincinnati
          </h2>
        </div>

        <div
          class="
            absolute
            right-5
            bottom-5
            lg:right-14 lg:bottom-8
            flex-col
            mt-8
            space-y-4
            md:space-y-0 md:flex-row md:items-center md:space-x-2 md:mt-0
          "
        ></div>
      </div>
    </div>
    <body>
      <div class="mx-8 md:mx-12 lg:mx-28 xl:mx-40 2xl:mx-64 mt-10">
        <h1 class="text-2xl font-semibold">Popular Categories</h1>
        <div class="w-full h-full">
          <nav>
            <ul class="flex relative pb-4 overflow-auto">
              <li class="inline-block pr-4">
                <button
                  class="
                    text-gray-500
                    hover:text-black
                    font-semibold
                    leading-8
                    h-12
                    hover:decoration-2
                    hover:underline
                    hover:underline-offset-[16px]
                    !py-4
                  "
                >
                  <span>All</span>
                </button>
              </li>
              <li class="inline-block pr-4">
                <button
                  class="
                    text-gray-500
                    hover:text-black
                    font-semibold
                    leading-8
                    h-12
                    hover:decoration-2
                    hover:underline
                    hover:underline-offset-[16px]
                    !py-4
                  "
                >
                  <span>Food</span>
                </button>
              </li>
              <li class="inline-block pr-4">
                <button
                  class="
                    text-gray-500
                    hover:text-black
                    font-semibold
                    leading-8
                    h-12
                    hover:decoration-2
                    hover:underline
                    hover:underline-offset-[16px]
                    !py-4
                  "
                >
                  <span>Sports</span>
                </button>
              </li>
              <li class="inline-block pr-4">
                <button
                  class="
                    text-gray-500
                    hover:text-black
                    font-semibold
                    leading-8
                    h-12
                    hover:decoration-2
                    hover:underline
                    hover:underline-offset-[16px]
                    !py-4
                  "
                >
                  <span>Brewery</span>
                </button>
              </li>
              <li class="inline-block pr-4">
                <button
                  class="
                    text-gray-500
                    hover:text-black
                    font-semibold
                    leading-8
                    h-12
                    hover:decoration-2
                    hover:underline
                    hover:underline-offset-[16px]
                    !py-4
                  "
                >
                  <span>Historic</span>
                </button>
              </li>
              <li class="inline-block pr-4">
                <button
                  class="
                    text-gray-500
                    hover:text-black
                    font-semibold
                    leading-8
                    h-12
                    hover:decoration-2
                    hover:underline
                    hover:underline-offset-[16px]
                    !py-4
                  "
                >
                  <span>Haunted</span>
                </button>
              </li>
            </ul>
          </nav>
          <div id="Card" class="pt-5">
            <h3 class="text-lg font-semibold">{{ somethingsomething }}</h3>
          </div>
        </div>
      </div>

      <section class="mx-8 md:mx-12 lg:mx-28 xl:mx-40 2xl:mx-64">
        <div class="w-full">
          <section
            v-for="category in this.$store.state.categories"
            v-bind:key="category.id"
            class="overflow-hidden"
          >
            <div class="py-2 border-b-gray-300 border-b">
              <h2 class="text-2xl font-semibold">{{ category }}</h2>
            </div>
            <div
              class="
                flex
                relative
                gap-x-4 gap-y-8
                my-5
                w-full
                overflow-x-auto
                no-scrollbar
              "
            >
              <router-link
                class="
                  group
                  hover:cursor-pointer
                  !min-w-[236px]
                  !w-[236px]
                  !min-h-[300px]
                  rounded-md
                  bg-white
                  border border-gray-400
                  hover:-translate-y-1
                  duration-300
                  hover:shadow-[1px_1px_4px_0_gray]
                "
                v-for="landmark in landmarkFilter(category)"
                v-bind:key="landmark.id"
                :to="{ name: 'landmark-details', params: { id: landmark.id } }"
                tag="ul"
              >
                <li class="overflow-x-auto">
                  <div class="h-[132px] w-full overflow-hidden bg-green-400">
                    <img
                      class="group-hover:scale-105 rounded-md h-full w-full"
                      :src="landmark.heroImg"
                      alt=""
                    />
                  </div>
                  <div class="p-2">
                    <h5
                      class="
                        mb-2
                        text-lg
                        font-medium
                        leading-tight
                        text-neutral-800
                      "
                    >
                      {{ landmark.name }}
                    </h5>
                    <p
                      class="
                        mb-4
                        text-md text-neutral-600
                        dark:text-neutral-200
                      "
                    >
                      {{ landmark.address }}
                    </p>
                  </div>
                </li>
              </router-link>
            </div>
          </section>
        </div>
      </section>
    </body>
  </div>
</template>

<script>
import landmarkService from "../services/LandmarkService";

export default {
  name: "home",
  data() {
    return {};
  },
  components: {},
  methods: {
    landmarkFilter(category) {
      return this.$store.state.landmarks.filter((landmark) => {
        if (landmark.category.includes(category)) {
          return landmark;
        }
      });
    },
  },
  created() {
    landmarkService.getAllLandmarks().then((response) => {
      this.$store.commit("SET_LANDMARKS", response.data);
    });
    landmarkService.getAllCategories().then((response) => {
      this.$store.commit("SET_CATEGORIES", response.data);
    });
  },
  mounted() {
    window.scrollTo(0, 0);
  },
};
</script>

