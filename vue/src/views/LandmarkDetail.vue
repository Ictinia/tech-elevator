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
          class="text-md font-semibold italic text-white pb-3 text-right absolute right-5 bottom-12 lg:bottom-16 lg:right-14"
        ></p>
        <div
          class="absolute left-5 bottom-5 lg:right-14 lg:bottom-8 flex-col mt-8 space-y-4 md:space-y-0 md:flex-row md:items-center md:space-x-2 md:mt-0"
        >
          <button
            type="button"
            class="text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm p-2.5 text-center inline-flex items-center mr-2 dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800"
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
            class="text-white bg-red-700 hover:bg-red-800 focus:ring-4 focus:outline-none focus:ring-red-300 font-medium rounded-lg text-sm p-2.5 text-center inline-flex items-center mr-2 dark:bg-red-600 dark:hover:bg-red-700 dark:focus:ring-red-800"
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
    <body>
      <div class="relative mx-8 md:mx-12 lg:mx-28 xl:mx-56 2xl:mx-80 mr-8">
        <section>
          <section class="flex py-9 border-b-gray-300 border-b">
            <h1 class="flex-auto text-3xl font-semibold left-0 text-gray-800">
              Lorem ipsum dolor sit amet
            </h1>
            <div class="hidden md:flex items-center ml-1">
              <button
                class="flex-auto text-lg font-semibold w-72 bg-blue-600 border text-white rounded-lg px-4 leading-8 h-12 hover:bg-blue-600/[0.9] z-10"
              >
                Add to Itinerary
              </button>
            </div>
          </section>
          <section class="w-full lg:w-1/2 text-md">
            <ul
              class="flex flex-wrap relative pb-4 overflow-auto pt-5 text-md items-center overflow"
            >
              <li class="flex pr-6">Rating</li>
              <li class="flex pr-6">
                <svg
                  class="h-7 w-7 text-blue-700 pr-1"
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
                  class="flex h-7 w-7 text-blue-700 pr-1"
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
                <p class="flex items-center">Category</p>
              </li>
              <li class="flex pr-6">
                <svg
                  class="flex h-7 w-7 text-blue-700 pr-1"
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
                <p class="flex items-center">Phone</p>
              </li>
            </ul>
            <div class="pt-2">
              <h2 class="text-lg font-semibold">About</h2>
              <p class="text-md pb-5">
                Lorem ipsum, dolor sit amet consectetur adipisicing elit.
                Cupiditate perferendis architecto sed aliquid, inventore autem
                fugit saepe excepturi eum error temporibus asperiores magnam,
                obcaecati, eos aperiam nulla fuga voluptatibus expedita.
              </p>
              <div class="flex justify-center align-middle w-full">
                <button
                  class="md:hidden sm:w-8/12 text-lg font-semibold w-full bg-blue-600 border text-white rounded-lg px-4 leading-8 h-12 hover:bg-blue-600/[0.9] z-10"
                >
                  Add to Itinerary
                </button>
              </div>
              <div class="mt-5 md:mt-0">
                <table>
                  <tr>
                    <td id="day">day:</td>
                    <td id="opening">opening</td>
                    <td id="sign">-</td>
                    <td id="closing">closing</td>
                  </tr>
                </table>
              </div>
            </div>
          </section>
        </section>
      </div>
    </body>
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
