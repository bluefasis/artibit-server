class Exhibition < ApplicationRecord
  has_many :arts
  has_many :artists, through: :arts
end
