import axios from "axios"

const ipConfig = `localhost`

export default axios.create({
  baseURL: `http://${ipConfig}/backend_nongsansach/`,
})
