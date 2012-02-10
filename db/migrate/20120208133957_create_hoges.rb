class CreateHoges < ActiveRecord::Migration
  def change
    create_table :hoges do |t|
      t.string :hogenter
      t.text :body
      t.references :hoge

      t.timestamps
    end
    add_index :hoges, :hoge_id
  end
end
