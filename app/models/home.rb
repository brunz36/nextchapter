class Home < ApplicationRecord
  include ImageUploader[:image]

  belongs_to :created_by, class_name: "User"

  def can_this_user_edit?(user)
    created_by == user
  end

  def can_this_user_destroy?(user)
    created_by == user
  end
end
