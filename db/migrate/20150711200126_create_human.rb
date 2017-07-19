class CreateHuman < ActiveRecord::Migration[5.1]
  def change
    create_table :humans do |t|
      t.string :name
      t.text :appears_in
      t.string :home_planet

      t.timestamps null: false
    end
  end
end
