class CreatePhysicians < ActiveRecord::Migration[6.0]
  def change
    create_table :physicians do |t|
      t.string :name
      t.string :specialty
      t.references :office, null: false, foreign_key: true

      t.timestamps
    end
  end
end
