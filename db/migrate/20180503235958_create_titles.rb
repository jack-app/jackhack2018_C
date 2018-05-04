class CreateTitles < ActiveRecord::Migration[5.1]
  def change
    create_table :titles do |t|
      t.string :name
      t.text :about

      t.timestamps
    end
  end
end
