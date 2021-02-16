import React from 'react'

import './styles'

const ImageCard = ({id, url, filename, byte_size, callBackDeleteImage}) => (

  <div className="card">
    <img src={url} className="card-img-top img-fluid" />

    <div className="card-body">
      <h5 className="card-title">{filename}</h5>
      <p className="card-text">Size: {byte_size} bytes</p>
      <a href="#" className="btn btn-danger" onClick={() => callBackDeleteImage(id) }>X</a>
    </div>

  </div>

)

export default ImageCard