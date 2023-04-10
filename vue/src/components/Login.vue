<template>
  <div class="modal" v-show="isOpen">
    <div class="fixed bg-black opacity-70 inset-0 z-0" @click="close"></div>
    <div
      class="w-full max-w-md p-3 absolute right-auto top-1/2 mx-auto my-auto rounded-md bg-white -translate-x-1/2 -translate-y-1/2 left-1/2"
    >
      <header>
        <button
          type="button"
          class="rounded-md p-2 absolute right-4 z-10 text-gray-700 focus:ring-2 focus:outline-none focus:border-indigo-400"
          @click="close"
        >
          <span class="sr-only">Close menu</span>
          <!-- Heroicon name: outline/x -->
          <svg
            class="h-6 w-6"
            xmlns="http://www.w3.org/2000/svg"
            fill="none"
            viewBox="0 0 24 24"
            stroke="currentColor"
            aria-hidden="true"
          >
            <path
              stroke-linecap="round"
              stroke-linejoin="round"
              stroke-width="2"
              d="M6 18L18 6M6 6l12 12"
            />
          </svg>
        </button>
        <div class="text-center p-3 flex-auto justify-center leading-6">
          <img src="../assets/planeteer-logo.png" class="h-9 w-auto mx-auto" />
          <h2 class="font-bold py-4 text-2xl text-"></h2>
        </div>
      </header>
      <form ref="auth" class="bg-white px-8 pb-8 mb-4" @submit.prevent="submit">
        <div role="alert" v-if="invalidCredentials" class="p-2">
          Invalid username or password!
        </div>

        <div role="alert" v-if="registrationErrors" class="p-2">
          {{ registrationErrorMsg }}
        </div>

        <div class="identity-input mb-5">
          <input
            id="username"
            class="appearance-none border rounded w-full h-12 py-2 px-3 text-gray-700 leading-tight hover:border-gray-700 focus:border-gray-700 focus:outline-none"
            type="text"
            placeholder="Username"
            aria-describedby="usernameHelp"
            v-model="user.username"
            required
            autofocus
          />
        </div>

        <div class="password-input mb-4">
          <input
            aria-describedby="passwordHelp"
            class="appearance-none border rounded w-full h-12 py-2 px-3 text-gray-700 leading-tight hover:border-gray-700 focus:border-gray-700 focus:outline-none"
            id="password"
            type="password"
            placeholder="Password"
            v-model="user.password"
            required
          />
        </div>

        <div class="password-confirm mb-4" v-if="isSignup">
          <input
            aria-describedby="passwordHelp"
            class="appearance-none border rounded w-full h-12 py-2 px-3 text-gray-700 leading-tight hover:border-gray-700 focus:border-gray-700 focus:outline-none"
            id="password"
            type="password"
            placeholder="Confirm Password"
            v-model="user.confirmPassword"
          />
        </div>

        <div class="flex items-center justify-between flex-col">
          <button
            class="bg-cyan-600 border border-cyan-600 text-white font-semibold text-md rounded px-4 leading-8 w-full mb-4 h-12 transition duration-300 hover:ease-out hover:bg-cyan-700 focus:outline-none focus:border-gray-700 focus:ease-out focus:bg-cyan-700"
            type="submit"
          >
            {{ isLogin ? "Sign In" : "Sign Up" }}
          </button>
          <a
            class="inline-block align-baseline font-bold text-sm text-blue-500 hover:text-blue-800 focus:outline-none focus:border-gray-700"
            :class="registrationErrors"
            href="#"
            @click="notImplemented"
          >
            Forgot Password?
          </a>
        </div>
      </form>
    </div>
  </div>
</template>

<script>
import authService from "../services/AuthService";

export default {
  data() {
    return {
      user: {
        username: "",
        password: "",
        confirmPassword: "",
        role: "user",
      },
      invalidCredentials: false,
      showError: false,
      registrationErrors: false,
      registrationErrorMsg: "There were problems registering this user.",
    };
  },

  props: {
    isOpen: Boolean,
    isLogin: Boolean,
    isSignup: Boolean,
  },

  computed: {
    isModalVisible() {
      return this.isOpen;
    },
  },

  methods: {
    close() {
      this.$emit("close");
      this.user.username = "";
      this.user.password = "";
      this.user.confirmPassword = "";
      this.invalidCredentials = false;
    },
    submit() {
      if (this.isLogin) {
        authService
          .login(this.user)
          .then((response) => {
            if (response.status == 200) {
              this.$store.commit("SET_AUTH_TOKEN", response.data.token);
              this.$store.commit("SET_USER", response.data.user);
              this.$emit("close");
              this.user.username = "";
              this.user.password = "";
              this.$router.push("/");
            }
          })
          .catch((error) => {
            const response = error.response;

            if (response.status === 401) {
              this.invalidCredentials = true;
            }
          });
      } else {
        if (this.user.password != this.user.confirmPassword) {
          this.registrationErrors = true;
          this.registrationErrorMsg =
            "Password & Confirm Password do not match.";
        } else {
          authService
            .register(this.user)
            .then((response) => {
              if (response.status == 201) {
                this.$emit("close");
                this.user.username = "";
                this.user.password = "";
                this.user.confirmPassword = "";
                this.$store.commit("SET_AUTH_TOKEN", response.data.token);
                this.$store.commit("SET_USER", response.data.user);
                this.$router.push({
                  path: "/",
                  query: { registration: "success" },
                });
                alert("Registration success!");
              }
            })
            .catch((error) => {
              const response = error.response;
              this.registrationErrors = true;
              if (response.status === 400) {
                this.registrationErrorMsg = "Bad Request: Validation Errors";
              }
            });
        }
      }
    },
    register() {
      authService
        .register(this.user)
        .then((response) => {
          if (response.status == 201) {
            this.$router.push({
              path: "/login",
              query: { registration: "success" },
            });
          }
        })
        .catch((error) => {
          const response = error.response;
          this.registrationErrors = true;
          if (response.status === 400) {
            this.registrationErrorMsg = "Bad Request: Validation Errors";
          }
        });
    },
    notImplemented() {
      alert("Not implemented!");
    },
  },
};
</script>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
}

.fade-enter,
.fade-leave-to {
  opacity: 0;
}

.fade-enter-active,
.fade-leave-active {
  transition: opacity 500ms ease-out;
}
</style>
