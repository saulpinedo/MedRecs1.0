class CreatePatients < ActiveRecord::Migration[5.0]
  def change
    create_table :patients do |t|
        t.string :firstname
        t.string :middlename
        t.string :lastname
        t.string :address
        t.date :birth_date

        t.timestamps
    end
  end
end
