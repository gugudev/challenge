import React, { useEffect, useState } from 'react'

import Header from './components/Header'
import ImageUploadForm from './components/ImageUploadForm'
import ImageList from './components/ImageList'

import { getImages, deleteImage } from './constants/api'

import 'bootstrap/dist/css/bootstrap.min.css';
import 'bootstrap/dist/js/bootstrap.bundle.min';

const App = () => {

  const [dataImages, setDataImages] = useState([])

  useEffect(() => {
    loadAllImages()
  }, [])

  const loadAllImages = () => {

    getImages()
    .then(res => { 
      setDataImages(res.data)
    })

  }

  const onImageUploaded = () => {
    loadAllImages()
  }

  const onDeleteImage = (idImage) => {

    deleteImage(idImage)
    .then(res => {
      loadAllImages()
    })

  }


  return (
    <div className="container">

      <Header />

      <ImageUploadForm callBackImageUploaded={onImageUploaded} />

      <ImageList images={dataImages} callBackDeleteImage={onDeleteImage} />


    </div>
  )
}

export default App
