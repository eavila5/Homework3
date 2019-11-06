class CreateAppointments < ActiveRecord::Migration[6.0]
  def change
    create_table :appointments do |t|
      t.date :visit
      t.string :physician
      t.string :patient
      t.references :Physician, null: false, foreign_key: true
      t.references :Patient, null: false, foreign_key: true

      t.timestamps
    end
  end
end
