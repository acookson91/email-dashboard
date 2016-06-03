class CreateEmails < ActiveRecord::Migration
  def change
    create_table :emails do |t|
      t.string :Address
      t.string :EmailType
      t.string :Event
      t.integer :Timestamp

      t.timestamps null: false
    end
  end
end
