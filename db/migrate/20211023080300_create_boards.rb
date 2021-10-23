class CreateBoards < ActiveRecord::Migration[6.1]
  def change
    create_table :boards do |t|
      t.string :title, null: false
      t.text :body, null: false
      t.integer :like

      t.timestamps
    end
  end
end
