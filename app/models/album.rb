class Album < ActiveRecord::Base
  belongs_to :band
  has_many :tracks, dependent: :destroy

  validates_presence_of :name, :band_id
end
