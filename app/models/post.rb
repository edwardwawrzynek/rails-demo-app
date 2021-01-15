class Post < ApplicationRecord
  belongs_to :user

  has_attached_file :image,
    path: ':rails_root/public/images/:id/:style/:filename',
    url: '/images/:id/:style/:filename',
    styles: {
      large: '1920x',
      medium: '640x480#',
      small: '64x64#',
    }

  validates_attachment_content_type :image, content_type: ['image/jpeg', 'image/jpg', 'image/png', 'image/gif'], message: "images must be jpg, png, or gif"
end
