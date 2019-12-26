class Meme < ApplicationRecord
  validates :title, presence: true, length: {minimum: 3}
end
