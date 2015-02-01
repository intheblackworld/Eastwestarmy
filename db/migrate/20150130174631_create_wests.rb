class CreateWests < ActiveRecord::Migration
  def change
    create_table :wests do |t|
      t.string :name
      t.string :food
      t.string :tel
      t.text :add

      t.timestamps
    end
  end
end
