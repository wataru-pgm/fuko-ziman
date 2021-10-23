class Board < ApplicationRecord
  validates :title, presemce: true
  validates :body, presence: true
end
