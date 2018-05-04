class Title < ApplicationRecord
  has_many :users, through: :user_titles
  has_many :user_titles
  accepts_nested_attributes_for :user_titles
end
