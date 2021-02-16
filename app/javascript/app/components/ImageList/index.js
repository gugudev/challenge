import React, { useEffect } from 'react'

import ImageCard from '../ImageCard'

const ImageList = (props) =>  {

  const renderImagesCards = () => (

    props.images.map((image, index) => <ImageCard key={index} {...image} {...props} /> )
  )

  return (
    <div className="row bg-light">
      { renderImagesCards() }
    </div>
  )

}

export default ImageList