<template>
  <footer
    class="bg-neutral-200 text-center dark:bg-neutral-700 lg:text-left mt-7"
  >
    <div class="p-4 text-center text-neutral-700 dark:text-neutral-200">
      © 2023 Copyright:
      <a
        class="text-neutral-800 dark:text-neutral-400"
        href="https://https://www.techelevator.com/?"
        >Tech Elevator</a
      >
    </div>
  </footer>
</template>
<script>
export default {
  data() {
    return {
      date: new Date().getFullYear(),
    };
  },
};
</script>
