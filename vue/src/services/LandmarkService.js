import axios from "axios";

export default {

    getAllLandmarks() {
        return axios.get(`/landmarks`)
    },

    getOperating(id) {
        return axios.get(`/landmarks/${id}/hours`)
    },

    getLandmark(id) {
        return axios.get(`/landmarks/${id}`)
    },

    /**
     * return a list of landmarks 
     * @param {*} term - option value to filter the landmarks
     * @returns a list of landmarks
     */
    filterLandmarks(term) {
        return axios.get(`/landmarks?filter=${term}`)
    },

    getAllCategories() {
        return axios.get(`/categories`)
    },

    getByCategory(category) {
        return axios.get(`/${category}`)
    },

    createLandmark(landmark) {
        return axios.post(`/landmarks`, landmark)
    },

    saveRating(id, rating) {
        return axios.post(`/landmarks/${id}/ratings`, rating)
    },

    approveLandmark(id) {
        return axios.put(`/landmarks/${id}`)
    },

    deleteLandmark(id) {
        return axios.delete(`/landmarks/${id}`)
    }

}