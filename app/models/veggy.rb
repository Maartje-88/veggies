class Veggy < ApplicationRecord
  belongs_to :user

  validates :user, presence: true
end
