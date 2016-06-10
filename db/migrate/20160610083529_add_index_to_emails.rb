class AddIndexToEmails < ActiveRecord::Migration
  def change
    add_index :emails, :Event
  end
end
