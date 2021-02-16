import React, { useEffect } from 'react'

import ImageCard from '../ImageCard'

import './styles'

const ImageList = (props) =>  {

  const renderImagesCards = () => (

    props.images.map((image, index) => <ImageCard key={index} {...image} {...props} /> )
  )

  return (
    <div className="row bg-light cards">
      { renderImagesCards() }
    </div>
  )

}

export default ImageList