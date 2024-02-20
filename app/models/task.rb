class Task < ApplicationRecord
  belongs_to :admin_user
  validates :name, presence: true

end
