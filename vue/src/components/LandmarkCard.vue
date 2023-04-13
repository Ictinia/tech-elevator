<template>
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
        <h5 class="mb-2 text-lg font-medium leading-tight text-neutral-800">
          {{ landmark.name }}
        </h5>
        <p class="mb-4 text-md text-neutral-600 dark:text-neutral-200">
          {{ landmark.address }}
        </p>
      </div>
    </li>
  </router-link>
</template>

<script>
export default {
  name: "landmark-card",
  props: ["landmark"],
};
</script>

<style>
</style>