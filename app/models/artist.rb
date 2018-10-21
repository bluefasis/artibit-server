class Artist < ApplicationRecord
  has_many :arts
  has_many :exhibitions, through: :arts
end
