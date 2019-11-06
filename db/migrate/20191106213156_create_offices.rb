class CreateOffices < ActiveRecord::Migration[6.0]
  def change
    create_table :offices do |t|
      t.string :street
      t.string :zip
      t.string :phone

      t.timestamps
    end
  end
end
