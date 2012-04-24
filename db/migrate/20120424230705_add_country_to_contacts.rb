class AddCountryToContacts < ActiveRecord::Migration
  def up
    add_column :contacts, :country, :string
  end

  def down
    remove_column :contacts, :country
  end

end
