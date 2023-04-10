<template>
  <div id="navbar">
    <div
      class="lg:px-12 px-5 md:flex md:justify-between md:items-center md:h-14 mx-auto h-11 bg-white border-b"
    >
      <div class="flex items-center justify-between">
        <router-link to="/" class="h-11 flex items-center">
          <img src="../assets/planeteer-logo.png" class="h-9 w-auto" />
        </router-link>

        <!-- Mobile menu button -->
        <div class="flex md:hidden">
          <button
            type="button"
            :show="showMenu"
            @click="showMenu = !showMenu"
            class="text-gray-800 hover:text-gray-400 focus:outline-none focus:text-gray-400"
          >
            <!-- <img src="../assets/hamburger-menu.png" /> -->
          </button>
          <div
            :class="showMenu ? 'flex' : 'hidden'"
            @click="showMenu = !showMenu"
            class="bg-gray-400 h-full left-0 fixed top-0 w-full opacity-20"
          ></div>
          <div
            :class="showMenu ? 'flex' : 'hidden'"
            class="bg-white flex flex-col h-full overflow-y-auto fixed right-0 top-0 w-56 z-50 ease-out duration-300"
          >
            <ul
              class="flex-col mt-8 space-y-4 md:flex md:space-y-0 md:flex-row md:items-center md:space-x-10 md:mt-0"
            >
              <li class="text-sm font-bold text-gray-800 hover:text-blue-400">
                Home
              </li>
              <li class="text-sm font-bold text-gray-800 hover:text-blue-400">
                About
              </li>
            </ul>
          </div>
        </div>
      </div>
      <div
        class="hidden md:flex flex-col mt-8 space-y-4 md:space-y-0 md:flex-row md:items-center md:space-x-2 md:mt-0"
      >
        <button
          class="text-sm bg-cyan-600 border border-cyan-600 text-white rounded px-4 leading-8"
          @click="showSignup"
          v-if="!isLoggedIn"
        >
          Sign Up
        </button>
        <button
          class="text-sm text-gray-500 border border-gray-200 rounded px-4 leading-8"
          @click="showLogin"
          v-if="!isLoggedIn"
        >
          Login
        </button>
        <button
          class="text-sm text-gray-500 border border-gray-200 rounded px-4 leading-8"
          @click="logout"
          v-if="isLoggedIn"
        >
          Logout
        </button>
      </div>
    </div>
    <login
      v-show="isOpen"
      :isOpen="isOpen"
      :isLogin="isLogin"
      :isSignup="isSignup"
      @close="closeLogin"
    />
  </div>
</template>

<script>
import Login from "../components/Login.vue";

export default {
  name: "navbar",
  components: {
    Login,
  },

  data() {
    return {
      isOpen: false,
      isLogin: false,
      isSignup: false,
      showMenu: false,
    };
  },

  computed: {
    isLoggedIn: function () {
      if (this.$store.state.token != "") {
        return true;
      } else {
        return false;
      }
    },
  },

  methods: {
    hamburgerMenu() {},
    showSignup() {
      this.isOpen = true;
      this.isSignup = true;
    },
    showLogin() {
      this.isOpen = true;
      this.isLogin = true;
    },
    closeLogin() {
      this.isOpen = false;
      this.isLogin = false;
      this.isSignup = false;
    },
    async logout() {
      this.$store.commit("LOGOUT");
      this.$router.push("/");
    },
  },
};
</script>
