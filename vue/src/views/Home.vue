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
