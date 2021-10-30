class CreateBoards < ActiveRecord::Migration[6.1]
  def change
    create_table :boards do |t|
      t.string :title, null: false
      t.text :body, null: false
      t.integer :likes, default: 0

      t.timestamps
    end
  end
end
