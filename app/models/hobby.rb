class Hobby < ApplicationRecord
  has_many :users, through: :user_hobbies
  has_many :user_hobbies
  accepts_nested_attributes_for :user_hobbies
  belongs_to :owner, class_name: 'User', foreign_key: 'owner_id'

  def self.search(search) #self.でクラスメソッドとしている
    if search # Controllerから渡されたパラメータが!= nilの場合は、titleカラムを部分一致検索
      Hobby.where(['name LIKE ?', "%#{search}%"])
    else
      Hobby.all #全て表示。
    end
  end
end
