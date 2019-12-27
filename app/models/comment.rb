class Comment < ApplicationRecord
  belongs_to :meme
  validates :username, presence: true, length: {minimum: 1, message: ': имя пользователя должно иметь хотя бы 1 символ'}
  validates :body, presence: true, length: {minimum: 1, message: ': комментарий не должен быть пустым'}
end
