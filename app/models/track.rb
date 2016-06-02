class Track < ActiveRecord::Base
  belongs_to :album

  validates_presence_of :album_id, :title, :track_type
  
end
