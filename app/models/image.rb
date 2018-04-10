class Image < ApplicationRecord
  mount_uploader :source, PhotoUploader
end
