import React, { useState } from 'react'

import { uploadImage } from '../../constants/api'

const ImageUploadForm = ({callBackImageUploaded}) => {

  const [statusOnUploadingFile, setStatusOnUploadingFile] = useState(false);

  const onSelectFile = (file) => {
    setStatusOnUploadingFile(true)

      uploadImage(file)
      .then(res => {
        setStatusOnUploadingFile(false)
        callBackImageUploaded()
      })
      .catch(err => {
        setStatusOnUploadingFile(false)
      })

  }

  return (
    <form>

      <div className="custom-file">
        <input id="file" type="file" onChange={(e) => onSelectFile(e.target.files[0])} accept="image/*" multiple={false} />
        <label htmlFor="file"  className="custom-file-label text-truncate">Choose file...</label>
      </div>

    </form>
  )


}

export default ImageUploadForm