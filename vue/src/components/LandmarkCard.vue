<template>
  <div class="max-w-6xl mx-auto px-4 sm:px-6 lg:px-8">
    <div
      class="
        grid grid-cols-1
        sm:grid-cols-2
        md:grid-cols-3
        lg:grid-cols-4
        gap-4
      "
    >
      <div v-for="(item, index) in items" :key="index">
        <picture-description
          :imageUrl="item.imageUrl"
          :imageAlt="item.imageAlt"
          :description="item.description"
        />
      </div>
    </div>
  </div>
</template>

<script>
export default {
  props: {
    categories: {
      type: Array,
      required: true,
    },
  },
};
</script>
