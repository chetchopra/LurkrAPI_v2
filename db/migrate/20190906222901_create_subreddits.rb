class CreateSubreddits < ActiveRecord::Migration[6.0]
  def change
    create_table :subreddits do |t|
      t.string :name
      t.string :link
      t.string :category
      t.string :subcategory

      t.timestamps
    end
  end
end
