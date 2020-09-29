class CreateCustomrecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :customrecipes do |t|
      t.string :title
      t.string :image
      t.string :ingredients
      t.string :instructions
      t.integer :readyInMinutes
      t.integer :servings
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
