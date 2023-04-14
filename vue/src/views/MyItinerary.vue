<template>
  <div>
    <div
      class="h-full min-h-full flex flex-col flex-auto flex-shrink-0 antialiased bg-gray-50 text-gray-800"
    >
      <div
        class="relative flex flex-col top-0 left-0 w-64 bg-white h-full border-r"
      >
        <div class="overflow-y-auto overflow-x-hidden flex-grow">
          <ul class="flex flex-col py-4 space-y-1">
            <li class="px-5">
              <div class="flex flex-row items-center h-8 border-b">
                <div class="text-sm font-light tracking-wide text-gray-500">
                  Overview
                </div>
              </div>
            </li>
            <li>
              <a
                href="#"
                class="relative flex flex-row items-center h-11 focus:outline-none hover:bg-gray-50 text-gray-600 hover:text-gray-800 border-l-4 border-transparent hover:border-indigo-500 pr-6"
              >
                <span class="ml-4 text-md tracking-wide truncate">{{
                  current
                }}</span>
              </a>
            </li>
          </ul>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  components: {},
};
</script>
