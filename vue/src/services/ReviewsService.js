import axios from "axios";

const http = axios.create({
    baseURL: "http://localhost:9000"
});

export default {

    getAllReviews(id) {
        return http.get(`/landmarks/${id}/reviews`)
    },
}