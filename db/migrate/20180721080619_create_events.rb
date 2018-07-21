class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.integer :month
      t.integer :date
      t.string :title

      t.timestamps
    end
  end
end
