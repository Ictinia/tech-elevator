import axios from "axios";

const http = axios.create({
    baseURL: "http://localhost:9000/"
});

export default {

    getUserItineraries(id) {
        return http.get(`/itinerary/user/${id}`)
    },

    getItinerary(id) {
        return http.get(`/itinerary/${id}`)
    },

    createItinerary(itinerary) {
        return http.post('/itinerary', itinerary)
    },

    updateItinerary(id) {
        return http.put(`/itinerary/${id}`)
    },

    deleteItinerary(id) {
        return http.delete(`/itinerary/${id}`)
    }

}