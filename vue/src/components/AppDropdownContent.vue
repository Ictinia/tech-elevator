<template>
  <transition name="dropdown-content">
    <div
      v-if="active"
      class="flex-none origin-top-right absolute -right-12 mt-[4.2rem] w-72 bg-white border"
    >
      <slot />
    </div>
  </transition>
</template>

<script>
export default {
  name: "AppDropdownContent",
  inject: ["sharedState"],
  computed: {
    active() {
      return this.sharedState.active;
    },
  },
};
</script>

<style>
.dropdown-content-enter-active,
.dropdown-content-leave-active {
  transition: all 0.2s;
}
.dropdown-content-enter,
.dropdown-content-leave-to {
  opacity: 0;
  transform: translateY(-5px);
}
</style>
