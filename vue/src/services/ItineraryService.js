import axios from "axios";



export default {

    getUserItineraries() {
        return axios.get(`/itinerary`)
    },

    getItinerary(id) {
        return axios.get(`/itinerary/${id}`)
    },

    createItinerary(itinerary) {
        return axios.post('/itinerary', itinerary)
    },

    updateItinerary(id) {
        return axios.put(`/itinerary/${id}`)
    },

    deleteItinerary(id) {
        return axios.delete(`/itinerary/${id}`)
    }

}