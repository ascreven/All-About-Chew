class CreateProfiles < ActiveRecord::Migration
  def change
    # add_column :line_items, :user_id, :int
    create_table :profiles do |t|
      t.string :name, null: false
      t.string :gender, null: false
      t.string :breed, null: false
      t.string :city, null: false
      t.string :state, null: false
      t.string :age, null: false
      t.string :pro_pic, null: false
      t.text :description, null: false
    end
  end
end
