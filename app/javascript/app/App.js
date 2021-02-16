import React, { useEffect, useState } from 'react'

import Header from './components/Header'
import ImageUploadForm from './components/ImageUploadForm'
import ImageList from './components/ImageList'

import { getImages, deleteImage } from './constants/api'

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
