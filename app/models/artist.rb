class Artist < ApplicationRecord
  has_many :arts
  has_many :exhibitions, through: :arts

  def as_json(options = {})
    super(options)
        .except("created_at", "updated_at")
  end
end
