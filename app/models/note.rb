class Note < ApplicationRecord
  validates :content, :title, presence: true
end
