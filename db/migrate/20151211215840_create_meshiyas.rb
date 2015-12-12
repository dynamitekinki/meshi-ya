class CreateMeshiyas < ActiveRecord::Migration
  def change
    create_table :meshiyas do |t|
      t.string :name
      t.string :genre
      t.string :dayoff
      t.time :open
      t.time :close

      t.timestamps null: false
    end
  end
end
