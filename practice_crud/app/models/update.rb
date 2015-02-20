class Update < ActiveRecord::Base
  validates :status, presence: true
  validates :user, presence: true

end
