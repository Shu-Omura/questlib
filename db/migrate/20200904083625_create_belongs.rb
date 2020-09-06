class CreateBelongs < ActiveRecord::Migration[6.0]
  def change
    create_table :belongs do |t|
      t.references :user, null: false, foreign_key: true
      t.references :team, null: false, foreign_key: true
      t.boolean :admin, default: false

      t.timestamps
    end
  end
end
