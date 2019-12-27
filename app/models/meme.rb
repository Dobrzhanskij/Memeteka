class Meme < ApplicationRecord
  mount_uploader :image, ImageUploader
  has_many :comments, dependent: :destroy
  validates :title, presence: true, length: {minimum: 3, message: ': длина заголовка должна быть не менее 3 символов'}
  validates :image, presence: true, length: {minimum: 1, message: ': загрузите картинку'}

end
