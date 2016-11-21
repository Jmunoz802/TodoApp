class TodoItem < ActiveRecord::Base
  belongs_to :user

  validates :title, presence: true
  validates :deadline, presence: true

  scope :ending_soon, order(":deadline desc")
end
