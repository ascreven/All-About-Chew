class Profile < ActiveRecord::Base
  # has_many :posts, dependent: :destroy
  belongs_to :user
  validates :name, presence: true
  # mms: is all of this information required for every dog?
  # mms: is this Profile for an organization or a dog?  I expected an organization too have a profile.  Each Organization would have many adoptees (puppies).
  validates :age, presence: true
  validates :breed, presence: true
  validates :gender, presence: true
  validates :city, presence: true
  validates :state, presence: true
end
