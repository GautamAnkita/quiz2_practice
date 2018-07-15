class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.date :dob
      t.string :email
      t.string :password_digest
      t.boolean :is_active
      t.references :designation, foreign_key: true

      t.timestamps
    end
  end
end
