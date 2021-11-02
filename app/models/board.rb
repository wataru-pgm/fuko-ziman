class Board < ApplicationRecord
  validates :title, {presence: true, length: {maximum: 10}}
  validates :body, {presence: true, length: {maximum: 200}}
end
