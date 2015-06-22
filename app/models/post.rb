class Post < ActiveRecord::Base
  mount_uploader :photo,  PhotoUploader
  belongs_to :user

  validates :photo, presence: true
  validates :comment, presence: true
  validates :title, presence: true

end
