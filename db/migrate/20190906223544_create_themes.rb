class CreateThemes < ActiveRecord::Migration[6.0]
  def change
    create_table :themes do |t|
      t.string :themeName
      t.string :header
      t.string :background
      t.string :subreddit
      t.string :post

      t.timestamps
    end
  end
end
