import axios from "axios";

const http = axios.create({
    baseURL: "http://localhost:9000"
});

export default {

    getAllLandmarks() {
        return http.get(`/landmarks`)
    },

    getOperating(id) {
        return http.get(`/landmarks/${id}/hours`)
    },

    getLandmark(id) {
        return http.get(`/landmarks/${id}`)
    },

    getAllCategories() {
        return http.get(`/categories`)
    },

    getByCategory(category) {
        return http.get(`/${category}`)
    },

    createLandmark(landmark) {
        return http.post(`/landmarks`, landmark)
    },

    approveLandmark(id) {
        return http.put(`/landmarks/${id}`)
    },

    deleteLandmark(id) {
        return http.delete(`/landmarks/${id}`)
    }

}