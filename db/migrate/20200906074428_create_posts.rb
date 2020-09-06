class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.references :user, null: false, foreign_key: true
      t.string :title, null: false
      t.string :content, null: false
      t.string :content_type, null: false
      t.string :tag
      t.boolean :solved, default: false
      t.string :image

      t.timestamps
    end
  end
end
