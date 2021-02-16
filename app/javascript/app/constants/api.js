import axios from 'axios';

import { IMAGES_PATH, IMAGE_PATH } from './index'

export const getImages = () => axios.get(IMAGES_PATH)
export const deleteImage = (id) => axios.delete(`${IMAGE_PATH}/${id}`)

export const uploadImage = (file) => {
  const formData = new FormData();
  formData.append("image[src]", file);

  return axios.post(IMAGES_PATH, formData, {
    headers: {
      'Content-Type': 'multipart/form-data'
    }
  })
}