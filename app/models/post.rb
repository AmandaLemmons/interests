class Post < ActiveRecord::Base
    paginates_per 5
  mount_uploader :photo,  PhotoUploader
  belongs_to :user

  validates :photo, presence: true
  validates :comment, presence: true
  validates :title, presence: true

end
