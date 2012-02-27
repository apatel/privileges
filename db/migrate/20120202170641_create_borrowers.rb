class CreateBorrowers < ActiveRecord::Migration
  def change
    create_table :borrowers do |t|
      t.string :firstname
      t.string :lastname
      t.string :middlename
      t.string :address_1
      t.string :address_2
      t.string :city
      t.string :state
      t.string :zip
      t.string :country
      t.string :email
      t.string :phone
      t.date :dob
      t.date :start_date
      t.date :end_date
      t.boolean :verified, :default => false      
      t.references :event
      t.references :card_type
      t.timestamps
    end
    
    [:firstname, :lastname, :email].each do|col|
      add_index :borrowers, col
    end
  end
end
