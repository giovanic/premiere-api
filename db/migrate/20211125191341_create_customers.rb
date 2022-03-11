class CreateCustomers < ActiveRecord::Migration[6.1]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :phone
      t.date :expire_at
      t.integer :sex
      t.string :cpf
      t.boolean :status
      t.integer :code
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
