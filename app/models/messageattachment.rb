class Messageattachment < ActiveRecord::Base
  attr_accessible :avatar

  belongs_to :message

  mount_uploader :avatar, AvatarUploader
end
