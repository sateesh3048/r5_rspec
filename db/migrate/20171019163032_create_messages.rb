class CreateMessages < ActiveRecord::Migration[5.1]
  def change
    create_table :messages do |t|
      t.string :title
      t.text :text
      t.integer :receipient_id

      t.timestamps
    end
  end
end
