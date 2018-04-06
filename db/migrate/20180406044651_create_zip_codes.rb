class CreateZipCodes < ActiveRecord::Migration[5.2]
  def change
    create_table :zip_codes do |t|
      t.integer :zip
      t.float :latitude
      t.float :longitude
      t.string :city
      t.string :state
      t.string :timezone_identifier

      t.timestamps
    end
  end
end
