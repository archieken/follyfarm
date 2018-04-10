class Attraction < ApplicationRecord
  mount_uploader :image, PhotoUploader
end
