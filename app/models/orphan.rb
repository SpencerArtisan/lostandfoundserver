class Orphan < ActiveRecord::Base
  attr_accessible :description, :latitude, :longitude, :image_url
end
