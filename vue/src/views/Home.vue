<template>
  <div class="home bg-white">
    <div class="bg-emerald-500 dark:bg-transparent">
      <div class="container mx-auto flex flex-col items-center py-12 sm:py-24">
        <div
          class="
            w-11/12
            sm:w-2/3
            lg:flex
            justify-center
            items-center
            flex-col
            mb-5
            sm:mb-10
          "
        >
          <h1
            class="
              text-2xl
              sm:text-3xl
              md:text-4xl
              lg:text-5xl
              xl:text-6xl
              text-center text-gray-800
              dark:text-white
              font-black
              leading-7
              md:leading-10
            "
          >
            Featured Destination
          </h1>
        </div>
        <div class="flex justify-center items-center">
          <button
            class="
              focus:outline-none
              focus:ring-2
              focus:ring-offset-2
              focus:ring-indigo-700
              bg-indigo-700
              transition
              duration-150
              ease-in-out
              hover:bg-indigo-600
              lg:text-xl lg:font-bold
              rounded
              text-white
              px-4
              sm:px-10
              border border-indigo-700
              py-2
              sm:py-4
              text-sm
            "
          >
            Get Started
          </button>
        </div>
      </div>
    </div>

    <div class="ml-10">Popular Categories</div>
    <!-- Category 1 -->
    <button
      class="
        bg-blue-500
        hover:bg-blue-700
        text-white
        font-bold
        py-2
        px-4
        ml-20
        rounded
      "
    >
      Button
    </button>

    <!-- Category 2 -->
    <button
      class="
        bg-blue-500
        hover:bg-blue-700
        text-white
        font-bold
        py-2
        px-4
        ml-20
        rounded
      "
    >
      Button
    </button>

    <!-- Category 3 -->
    <button
      class="
        bg-blue-500
        hover:bg-blue-700
        text-white
        font-bold
        py-2
        px-4
        ml-20
        rounded
      "
    >
      Button
    </button>

    <!-- Category 4 -->
    <button
      class="
        bg-blue-500
        hover:bg-blue-700
        text-white
        font-bold
        py-2
        px-4
        ml-20
        rounded
      "
    >
      Button
    </button>

    <!-- Category 5 -->
    <button
      class="
        bg-blue-500
        hover:bg-blue-700
        text-white
        font-bold
        py-2
        px-4
        ml-20
        rounded
      "
    >
      Button
    </button>

    <div>Categories</div>
    <div id="default-carousel" class="relative w-full" data-carousel="slide">
      <!-- Carousel wrapper -->
      <div class="relative h-56 overflow-hidden rounded-lg md:h-96">
        <!-- Item 1 -->
        <div class="hidden duration-700 ease-in-out" data-carousel-item>
          <img
            src="/docs/images/carousel/carousel-1.svg"
            class="
              absolute
              block
              w-full
              -translate-x-1/2 -translate-y-1/2
              top-1/2
              left-1/2
            "
            alt="..."
          />
        </div>
        <!-- Item 2 -->
        <div class="hidden duration-700 ease-in-out" data-carousel-item>
          <img
            src="/docs/images/carousel/carousel-2.svg"
            class="
              absolute
              block
              w-full
              -translate-x-1/2 -translate-y-1/2
              top-1/2
              left-1/2
            "
            alt="..."
          />
        </div>
        <!-- Item 3 -->
        <div class="hidden duration-700 ease-in-out" data-carousel-item>
          <img
            src="/docs/images/carousel/carousel-3.svg"
            class="
              absolute
              block
              w-full
              -translate-x-1/2 -translate-y-1/2
              top-1/2
              left-1/2
            "
            alt="..."
          />
        </div>
        <!-- Item 4 -->
        <div class="hidden duration-700 ease-in-out" data-carousel-item>
          <img
            src="/docs/images/carousel/carousel-4.svg"
            class="
              absolute
              block
              w-full
              -translate-x-1/2 -translate-y-1/2
              top-1/2
              left-1/2
            "
            alt="..."
          />
        </div>
        <!-- Item 5 -->
        <div class="hidden duration-700 ease-in-out" data-carousel-item>
          <img
            src="/docs/images/carousel/carousel-5.svg"
            class="
              absolute
              block
              w-full
              -translate-x-1/2 -translate-y-1/2
              top-1/2
              left-1/2
            "
            alt="..."
          />
        </div>
      </div>
      <!-- Slider indicators -->
      <div
        class="absolute z-30 flex space-x-3 -translate-x-1/2 bottom-5 left-1/2"
      >
        <button
          type="button"
          class="w-3 h-3 rounded-full"
          aria-current="true"
          aria-label="Slide 1"
          data-carousel-slide-to="0"
        ></button>
        <button
          type="button"
          class="w-3 h-3 rounded-full"
          aria-current="false"
          aria-label="Slide 2"
          data-carousel-slide-to="1"
        ></button>
        <button
          type="button"
          class="w-3 h-3 rounded-full"
          aria-current="false"
          aria-label="Slide 3"
          data-carousel-slide-to="2"
        ></button>
        <button
          type="button"
          class="w-3 h-3 rounded-full"
          aria-current="false"
          aria-label="Slide 4"
          data-carousel-slide-to="3"
        ></button>
        <button
          type="button"
          class="w-3 h-3 rounded-full"
          aria-current="false"
          aria-label="Slide 5"
          data-carousel-slide-to="4"
        ></button>
      </div>
      <!-- Slider controls -->
      <button
        type="button"
        class="
          absolute
          top-0
          left-0
          z-30
          flex
          items-center
          justify-center
          h-full
          px-4
          cursor-pointer
          group
          focus:outline-none
        "
        data-carousel-prev
      >
        <span
          class="
            inline-flex
            items-center
            justify-center
            w-8
            h-8
            rounded-full
            sm:w-10 sm:h-10
            bg-white/30
            dark:bg-gray-800/30
            group-hover:bg-white/50
            dark:group-hover:bg-gray-800/60
            group-focus:ring-4 group-focus:ring-white
            dark:group-focus:ring-gray-800/70
            group-focus:outline-none
          "
        >
          <svg
            aria-hidden="true"
            class="w-5 h-5 text-white sm:w-6 sm:h-6 dark:text-gray-800"
            fill="none"
            stroke="currentColor"
            viewBox="0 0 24 24"
            xmlns="http://www.w3.org/2000/svg"
          >
            <path
              stroke-linecap="round"
              stroke-linejoin="round"
              stroke-width="2"
              d="M15 19l-7-7 7-7"
            ></path>
          </svg>
          <span class="sr-only">Previous</span>
        </span>
      </button>
      <button
        type="button"
        class="
          absolute
          top-0
          right-0
          z-30
          flex
          items-center
          justify-center
          h-full
          px-4
          cursor-pointer
          group
          focus:outline-none
        "
        data-carousel-next
      >
        <span
          class="
            inline-flex
            items-center
            justify-center
            w-8
            h-8
            rounded-full
            sm:w-10 sm:h-10
            bg-white/30
            dark:bg-gray-800/30
            group-hover:bg-white/50
            dark:group-hover:bg-gray-800/60
            group-focus:ring-4 group-focus:ring-white
            dark:group-focus:ring-gray-800/70
            group-focus:outline-none
          "
        >
          <svg
            aria-hidden="true"
            class="w-5 h-5 text-white sm:w-6 sm:h-6 dark:text-gray-800"
            fill="none"
            stroke="currentColor"
            viewBox="0 0 24 24"
            xmlns="http://www.w3.org/2000/svg"
          >
            <path
              stroke-linecap="round"
              stroke-linejoin="round"
              stroke-width="2"
              d="M9 5l7 7-7 7"
            ></path>
          </svg>
          <span class="sr-only">Next</span>
        </span>
      </button>
    </div>
  </div>
</template>

<script>
export default {
  name: "home",
};
</script>
