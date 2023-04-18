import axios from "axios";

export default {

    getReviews(id) {
        return axios.get(`/landmarks/${id}/reviews`)
    },

    getAllReviews(id) {
        return axios.get(`/landmarks/${id}/reviews`)
    },

    addReview(id, reviewData) {
        return axios.post(`/landmarks/${id}/reviews`, reviewData)

    }
}