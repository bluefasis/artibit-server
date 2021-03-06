class Art < ApplicationRecord
  belongs_to :exhibition
  belongs_to :artist

  def self.arts_in_exhibition(exhibition)
    joins(:exhibition).where(exhibition: exhibition)
  end

  def as_json(options = {})
    super(options)
        .except("created_at", "updated_at")
        .merge(artist: artist)
  end
end
