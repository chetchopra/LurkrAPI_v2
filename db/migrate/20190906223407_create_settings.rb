class CreateSettings < ActiveRecord::Migration[6.0]
  def change
    create_table :settings do |t|
      t.integer :numberOfCols
      t.integer :theme_id
      t.integer :user_id

      t.timestamps
    end
  end
end
