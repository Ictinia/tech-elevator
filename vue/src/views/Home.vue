<template>
  <div class="font-sans">
    <div class="relative bg-green-600">
      <img
        src="https://www.tpl.org/wp-content/uploads/2021/05/8_2021_Cincinnati-Ohio_header.jpg"
        class="absolute object-cover w-full h-full z-0"
        alt=""
      />
      <div class="relative bg-gray-900 bg-opacity-40 h-96 z-0">
        <p
          class="text-md font-semibold italic text-white pb-3 text-right absolute right-5 bottom-12 lg:bottom-16 lg:right-14"
        >
          test lorem ipsum
        </p>
        <div
          class="absolute right-5 bottom-5 lg:right-14 lg:bottom-8 flex-col mt-8 space-y-4 md:space-y-0 md:flex-row md:items-center md:space-x-2 md:mt-0"
        >
          <button
            class="text-md bg-white border text-black rounded-lg px-4 leading-8 h-10 hover:bg-white/[0.9] z-10"
          >
            Button
          </button>
        </div>
      </div>
    </div>
    <body>
      <div class="ml-8 md:ml-12 xl:ml-16 mr-8 mt-10">
        <h1 class="text-2xl font-semibold">Popular Categories</h1>
        <div class="w-full h-full">
          <nav>
            <ul class="flex relative pb-4 overflow-auto">
              <li class="inline-block pr-4">
                <button
                  class="text-gray-500 hover:text-black font-semibold leading-8 h-12 hover:decoration-2 hover:underline hover:underline-offset-[16px] !py-4"
                >
                  <span>All</span>
                </button>
              </li>
              <li class="inline-block pr-4">
                <button
                  class="text-gray-500 hover:text-black font-semibold leading-8 h-12 hover:decoration-2 hover:underline hover:underline-offset-[16px] !py-4"
                >
                  <span>Food</span>
                </button>
              </li>
              <li class="inline-block pr-4">
                <button
                  class="text-gray-500 hover:text-black font-semibold leading-8 h-12 hover:decoration-2 hover:underline hover:underline-offset-[16px] !py-4"
                >
                  <span>Sports</span>
                </button>
              </li>
              <li class="inline-block pr-4">
                <button
                  class="text-gray-500 hover:text-black font-semibold leading-8 h-12 hover:decoration-2 hover:underline hover:underline-offset-[16px] !py-4"
                >
                  <span>Landmark</span>
                </button>
              </li>
              <li class="inline-block pr-4">
                <button
                  class="text-gray-500 hover:text-black font-semibold leading-8 h-12 hover:decoration-2 hover:underline hover:underline-offset-[16px] !py-4"
                >
                  <span>Brewery</span>
                </button>
              </li>
              <li class="inline-block pr-4">
                <button
                  class="text-gray-500 hover:text-black font-semibold leading-8 h-12 hover:decoration-2 hover:underline hover:underline-offset-[16px] !py-4"
                >
                  <span>Historic</span>
                </button>
              </li>
              <li class="inline-block pr-4">
                <button
                  class="text-gray-500 hover:text-black font-semibold leading-8 h-12 hover:decoration-2 hover:underline hover:underline-offset-[16px] !py-4"
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
    </body>
  </div>
</template>

<script>
export default {
  name: "home",
  data() {
    return {};
  },
  components: {},
};
</script>
