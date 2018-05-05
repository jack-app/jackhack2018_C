class AddOwnerToHobbies < ActiveRecord::Migration[5.1]
  def change
    add_reference :hobbies, :owner, foreign_key: true
  end
end
