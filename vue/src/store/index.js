import Vue from 'vue'
import Vuex from 'vuex'
import axios from 'axios'

Vue.use(Vuex)

/*
 * The authorization header is set for axios when you login but what happens when you come back or
 * the page is refreshed. When that happens you need to check for the token in local storage and if it
 * exists you should set the header so that it will be attached to each request
 */
const currentToken = localStorage.getItem('token')
const currentUser = JSON.parse(localStorage.getItem('user'));

if (currentToken != null) {
  axios.defaults.headers.common['Authorization'] = `Bearer ${currentToken}`;
}

export default new Vuex.Store({
  state: {
    token: currentToken || '',
    user: currentUser || {},
    categories: [],
    activeCategory: null,
    categoryCards: [],
    landmarks: [],
    activeLandmark: null,
    hours: [],
    itineraries: [],
    activeHourId: null,
    activeItinerary: null,
    itineraryStops: [],
    landmark: {
      landmark_id: '',
      name: '',
      category: '',
      description: '',
      phone: '',
      address: '',
      thumbsUp: '',
      thumbsDown: '',
      hero_img: '',
      latitude: '',
      longitude: '',
      map_link: ''
    },
    itinerary: {
      itinerary_id: null,
      user_id: '',
      name: '',
      date: '',
      landmarks: [],
    },
    review: {
      review_id: '',
      landmark_id: '',
      user_id: '',
      title: '',
      description: '',
    },
    reviews: []
  },

  mutations: {
    SET_AUTH_TOKEN(state, token) {
      state.token = token;
      localStorage.setItem('token', token);
      axios.defaults.headers.common['Authorization'] = `Bearer ${token}`
    },
    SET_USER(state, user) {
      state.user = user;
      localStorage.setItem('user', JSON.stringify(user));
    },
    LOGOUT(state) {
      localStorage.removeItem('token');
      localStorage.removeItem('user');
      state.token = '';
      state.user = {};
      axios.defaults.headers.common = {};
    },
    SET_CATEGORIES(state, categories) {
      state.categories = categories;
    },
    SET_ACTIVE_CATEGORY(state, category) {
      state.activeCategory = category;
    },
    SET_CATEGORY_CARD(state, cards) {
      state.categoryCards = cards;
    },
    SET_LANDMARKS(state, landmarks) {
      state.landmarks = landmarks;
    },
    SET_ACTIVE_LANDMARK(state, id) {
      state.activeLandmark = id;
    },
    SET_CURRENT_LANDMARK(state, landmark) {
      state.landmark = landmark;
    },
    SET_CURRENT_LANDMARK_THUMBS_UP(state, thumbsUp) {
      state.landmark.thumbsUp = thumbsUp;
    },

    SET_CURRENT_LANDMARK_THUMBS_DOWN(state, thumbsDown) {
      state.landmark.thumbsDown = thumbsDown;
    },

    SET_LANDMARK_HOURS(state, hours) {
      state.hours = hours;
    },
    SET_REVIEWS(state, reviews) {
      state.reviews = reviews;
    },
    SET_ITINERARIES(state, itineraries) {
      state.itineraries = itineraries;
    },
    SET_CURRENT_ITINERARY(state, itinerary) {
      state.itinerary = itinerary;
    },
    SET_STOPS(state, stops) {
      state.itinerary.landmarks = stops
    },
    SET_NAME(state, name) {
      state.itinerary.name = name
    },
    SET_DATE(state, date) {
      state.itinerary.date = date
    }
  },
  
  actions: {
    updateStops({commit}, stops) {
      commit('SET_STOPS', stops);
    },
    updateName({commit}, name) {
      commit('SET_NAME', name);
    },
    updateDate({commit}, date) {
      commit('SET_DATE', date);
    },
  }


})
