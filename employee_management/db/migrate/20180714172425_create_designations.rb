class CreateDesignations < ActiveRecord::Migration[5.2]
  def change
    create_table :designations do |t|
      t.string :title

      t.timestamps
    end
  end
end
