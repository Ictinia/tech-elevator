import Vue from 'vue'
import App from './App.vue'
import router from './router/index'
import store from './store/index'
import axios from 'axios'
import navbar from './components/Navbar.vue'
import login from './components/Login.vue'
import footer from './components/Footer.vue'
import moment from 'moment'

import './assets/tailwind.css'

Vue.config.productionTip = false

axios.defaults.baseURL = process.env.VUE_APP_REMOTE_API;

Vue.component('navbar', navbar)
Vue.component('login', login)
Vue.component('footer-component', footer)
Vue.prototype.moment = moment

new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
