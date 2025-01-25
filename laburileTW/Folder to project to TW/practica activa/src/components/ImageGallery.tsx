import React from 'react';

interface ImageGalleryProps {
  images: File[];
}

const ImageGallery: React.FC<ImageGalleryProps> = ({ images }) => {
  return (
    <div className="mb-8">
      <h2 className="text-2xl font-bold mb-4">Galerie de Imagini</h2>
      <div className="grid grid-cols-2 md:grid-cols-3 lg:grid-cols-4 gap-4">
        {images.map((image, index) => (
          <div key={index} className="aspect-w-1 aspect-h-1">
            <img
              src={URL.createObjectURL(image)}
              alt={`Uploaded image ${index + 1}`}
              className="object-cover w-full h-full rounded-lg"
            />
          </div>
        ))}
      </div>
    </div>
  );
};

export default ImageGallery;