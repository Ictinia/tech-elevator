<template>
  <div class="font-sans">
    <div class="relative bg-green-600">
      <img
        src="https://www.ballparksofbaseball.com/wp-content/uploads/2016/03/gab23main.jpg"
        class="absolute object-cover w-full h-full z-0"
        alt=""
      />
      <div class="relative bg-gray-900 bg-opacity-40 h-96 z-0">
        <p
          class="
            text-md
            font-semibold
            italic
            text-white
            pb-3
            text-right
            absolute
            right-5
            bottom-12
            lg:bottom-16 lg:right-14
          "
        ></p>
        <div
          class="
            absolute
            left-5
            bottom-5
            lg:right-14 lg:bottom-8
            flex-col
            mt-8
            space-y-4
            md:space-y-0 md:flex-row md:items-center md:space-x-2 md:mt-0
          "
        >
          <button
            type="button"
            class="
              text-white
              bg-blue-700
              hover:bg-blue-800
              focus:ring-4 focus:outline-none focus:ring-blue-300
              font-medium
              rounded-lg
              text-sm
              p-2.5
              text-center
              inline-flex
              items-center
              mr-2
              dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800
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
            <span class="sr-only">Icon description</span>
          </button>
          <button
            type="button"
            class="
              text-white
              bg-red-700
              hover:bg-red-800
              focus:ring-4 focus:outline-none focus:ring-red-300
              font-medium
              rounded-lg
              text-sm
              p-2.5
              text-center
              inline-flex
              items-center
              mr-2
              dark:bg-red-600 dark:hover:bg-red-700 dark:focus:ring-red-800
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
            <span class="sr-only">Icon description</span>
          </button>
        </div>
      </div>
    </div>
    <br />
    <br />
    <div class="relative">
      <p class="absolute left-0">Landmark name placeholder</p>
      <p class="absolute right-0">
        <button
          class="
            bg-blue-500
            hover:bg-blue-700
            text-white
            font-bold
            py-2
            px-4
            border border-blue-700
            rounded
          "
        >
          Add To Itinerary
        </button>
      </p>
    </div>
  </div>
</template>

<script>
export default {
  name: "landmark-detail",
  data() {
    return {};
  },
  components: {},
};
</script>