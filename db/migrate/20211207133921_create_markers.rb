class CreateMarkers < ActiveRecord::Migration[6.1]
  def change
    create_table :markers do |t|
      t.string :title
      t.text :description
      t.decimal :latitude
      t.decimal :longitude
      t.string :phone
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
