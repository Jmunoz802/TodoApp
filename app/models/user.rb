class User < ActiveRecord::Base
  has_many :todoitems

  validates :name, presence: true, uniqueness: true
end
