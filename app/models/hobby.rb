class Hobby < ApplicationRecord
  has_many :users, through: :user_hobbies
  has_many :user_hobbies
end
