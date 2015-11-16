class Profile < ActiveRecord::Base
  has_many :posts, dependent: :destroy
  validates :name, presence: true
  validates :age, presence: true
  validates :breed, presence: true
  validates :gender, presence: true
  validates :city, presence: true
  validates :state, presence: true
end
