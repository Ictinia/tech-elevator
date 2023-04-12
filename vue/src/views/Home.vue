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
        >
          test lorem ipsum
        </p>
        <div
          class="
            absolute
            right-5
            bottom-5
            lg:right-14 lg:bottom-8
            flex-col
            mt-8
            space-y-4
            md:space-y-0 md:flex-row md:items-center md:space-x-2 md:mt-0
          "
        >
          <button
            class="
              text-md
              bg-white
              border
              text-black
              rounded-lg
              px-4
              leading-8
              h-10
              hover:bg-white/[0.9]
              z-10
            "
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
                  class="
                    text-gray-500
                    hover:text-black
                    font-semibold
                    leading-8
                    h-12
                    hover:decoration-2
                    hover:underline
                    hover:underline-offset-[16px]
                    !py-4
                  "
                >
                  <span>All</span>
                </button>
              </li>
              <li class="inline-block pr-4">
                <button
                  class="
                    text-gray-500
                    hover:text-black
                    font-semibold
                    leading-8
                    h-12
                    hover:decoration-2
                    hover:underline
                    hover:underline-offset-[16px]
                    !py-4
                  "
                >
                  <span>Food</span>
                </button>
              </li>
              <li class="inline-block pr-4">
                <button
                  class="
                    text-gray-500
                    hover:text-black
                    font-semibold
                    leading-8
                    h-12
                    hover:decoration-2
                    hover:underline
                    hover:underline-offset-[16px]
                    !py-4
                  "
                >
                  <span>Sports</span>
                </button>
              </li>
              <li class="inline-block pr-4">
                <button
                  class="
                    text-gray-500
                    hover:text-black
                    font-semibold
                    leading-8
                    h-12
                    hover:decoration-2
                    hover:underline
                    hover:underline-offset-[16px]
                    !py-4
                  "
                >
                  <span>Landmark</span>
                </button>
              </li>
              <li class="inline-block pr-4">
                <button
                  class="
                    text-gray-500
                    hover:text-black
                    font-semibold
                    leading-8
                    h-12
                    hover:decoration-2
                    hover:underline
                    hover:underline-offset-[16px]
                    !py-4
                  "
                >
                  <span>Brewery</span>
                </button>
              </li>
              <li class="inline-block pr-4">
                <button
                  class="
                    text-gray-500
                    hover:text-black
                    font-semibold
                    leading-8
                    h-12
                    hover:decoration-2
                    hover:underline
                    hover:underline-offset-[16px]
                    !py-4
                  "
                >
                  <span>Historic</span>
                </button>
              </li>
              <li class="inline-block pr-4">
                <button
                  class="
                    text-gray-500
                    hover:text-black
                    font-semibold
                    leading-8
                    h-12
                    hover:decoration-2
                    hover:underline
                    hover:underline-offset-[16px]
                    !py-4
                  "
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

      <section class="py-6 sm:py-12 dark:bg-gray-800 dark:text-gray-100">
        <div class="container p-6 mx-auto space-y-8">
          <div class="space-y-2 text-center">
            <h2 class="text-3xl font-bold">Discover what's available</h2>
            <p class="font-serif text-sm dark:text-gray-400">
              Lorem ipsum dolor sit amet consectetur adipisicing elit. Est cum
              recusandae debitis temporibus voluptatum doloremque mollitia,
              accusamus facilis voluptas nulla excepturi aliquid praesentium,
              maiores facere tempora corporis et sequi laborum.
            </p>
          </div>
          <div
            class="
              grid grid-cols-1
              gap-x-4 gap-y-8
              md:grid-cols-2
              lg:grid-cols-4
            "
          >
            <article class="flex flex-col dark:bg-gray-900">
              <a
                rel="noopener noreferrer"
                href="#"
                aria-label="Te nulla oportere reprimique his dolorum"
              >
                <img
                  alt=""
                  class="object-cover w-full h-52 dark:bg-gray-500"
                  src="https://source.unsplash.com/200x200/?fashion?1"
                />
              </a>
              <div class="flex flex-col flex-1 p-6">
                <a
                  rel="noopener noreferrer"
                  href="#"
                  aria-label="Description for matching picture"
                ></a>
                <a
                  rel="noopener noreferrer"
                  href="#"
                  class="
                    text-xs
                    tracking-wider
                    uppercase
                    hover:underline
                    dark:text-violet-400
                  "
                  >Landmarks</a
                >
                <h3 class="flex-1 py-2 text-lg font-semibold leading-snug">
                  Description for matching picture
                </h3>
                <div
                  class="
                    flex flex-wrap
                    justify-between
                    pt-3
                    space-x-2
                    text-xs
                    dark:text-gray-400
                  "
                ></div>
              </div>
            </article>
            <article class="flex flex-col dark:bg-gray-900">
              <a
                rel="noopener noreferrer"
                href="#"
                aria-label="Description for matching picture"
              >
                <img
                  alt=""
                  class="object-cover w-full h-52 dark:bg-gray-500"
                  src="https://source.unsplash.com/200x200/?fashion?2"
                />
              </a>
              <div class="flex flex-col flex-1 p-6">
                <a
                  rel="noopener noreferrer"
                  href="#"
                  aria-label="Description for matching picture"
                ></a>
                <a
                  rel="noopener noreferrer"
                  href="#"
                  class="
                    text-xs
                    tracking-wider
                    uppercase
                    hover:underline
                    dark:text-violet-400
                  "
                  >Historical</a
                >
                <h3 class="flex-1 py-2 text-lg font-semibold leading-snug">
                  Description for matching picture
                </h3>
                <div
                  class="
                    flex flex-wrap
                    justify-between
                    pt-3
                    space-x-2
                    text-xs
                    dark:text-gray-400
                  "
                ></div>
              </div>
            </article>
            <article class="flex flex-col dark:bg-gray-900">
              <a
                rel="noopener noreferrer"
                href="#"
                aria-label="Description for matching picture"
              >
                <img
                  alt=""
                  class="object-cover w-full h-52 dark:bg-gray-500"
                  src="https://source.unsplash.com/200x200/?fashion?3"
                />
              </a>
              <div class="flex flex-col flex-1 p-6">
                <a
                  rel="noopener noreferrer"
                  href="#"
                  aria-label="Description for matching picture"
                ></a>
                <a
                  rel="noopener noreferrer"
                  href="#"
                  class="
                    text-xs
                    tracking-wider
                    uppercase
                    hover:underline
                    dark:text-violet-400
                  "
                  >Sports</a
                >
                <h3 class="flex-1 py-2 text-lg font-semibold leading-snug">
                  Description for matching picture
                </h3>
                <div
                  class="
                    flex flex-wrap
                    justify-between
                    pt-3
                    space-x-2
                    text-xs
                    dark:text-gray-400
                  "
                ></div>
              </div>
            </article>
            <article class="flex flex-col dark:bg-gray-900">
              <a
                rel="noopener noreferrer"
                href="#"
                aria-label="Description for matching picture"
              >
                <img
                  alt=""
                  class="object-cover w-full h-52 dark:bg-gray-500"
                  src="https://source.unsplash.com/200x200/?fashion?4"
                />
              </a>
              <div class="flex flex-col flex-1 p-6">
                <a
                  rel="noopener noreferrer"
                  href="#"
                  aria-label="Description matching the Picture"
                ></a>
                <a
                  rel="noopener noreferrer"
                  href="#"
                  class="
                    text-xs
                    tracking-wider
                    uppercase
                    hover:underline
                    dark:text-violet-400
                  "
                  >Food</a
                >
                <h3 class="flex-1 py-2 text-lg font-semibold leading-snug">
                  Description for matching picture
                </h3>
                <div
                  class="
                    flex flex-wrap
                    justify-between
                    pt-3
                    space-x-2
                    text-xs
                    dark:text-gray-400
                  "
                ></div>
              </div>
            </article>

            <article class="flex flex-col dark:bg-gray-900">
              <a
                rel="noopener noreferrer"
                href="#"
                aria-label="Te nulla oportere reprimique his dolorum"
              >
                <img
                  alt=""
                  class="object-cover w-full h-52 dark:bg-gray-500"
                  src="https://source.unsplash.com/200x200/?fashion?1"
                />
              </a>
              <div class="flex flex-col flex-1 p-6">
                <a
                  rel="noopener noreferrer"
                  href="#"
                  aria-label="Description for matching picture"
                ></a>
                <a
                  rel="noopener noreferrer"
                  href="#"
                  class="
                    text-xs
                    tracking-wider
                    uppercase
                    hover:underline
                    dark:text-violet-400
                  "
                  >Landmarks</a
                >
                <h3 class="flex-1 py-2 text-lg font-semibold leading-snug">
                  Description for matching picture
                </h3>
                <div
                  class="
                    flex flex-wrap
                    justify-between
                    pt-3
                    space-x-2
                    text-xs
                    dark:text-gray-400
                  "
                ></div>
              </div>
            </article>

            <article class="flex flex-col dark:bg-gray-900">
              <a
                rel="noopener noreferrer"
                href="#"
                aria-label="Te nulla oportere reprimique his dolorum"
              >
                <img
                  alt=""
                  class="object-cover w-full h-52 dark:bg-gray-500"
                  src="https://source.unsplash.com/200x200/?fashion?1"
                />
              </a>
              <div class="flex flex-col flex-1 p-6">
                <a
                  rel="noopener noreferrer"
                  href="#"
                  aria-label="Description for matching picture"
                ></a>
                <a
                  rel="noopener noreferrer"
                  href="#"
                  class="
                    text-xs
                    tracking-wider
                    uppercase
                    hover:underline
                    dark:text-violet-400
                  "
                  >Landmarks</a
                >
                <h3 class="flex-1 py-2 text-lg font-semibold leading-snug">
                  Description for matching picture
                </h3>
                <div
                  class="
                    flex flex-wrap
                    justify-between
                    pt-3
                    space-x-2
                    text-xs
                    dark:text-gray-400
                  "
                ></div>
              </div>
            </article>
          </div>
        </div>
      </section>
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
