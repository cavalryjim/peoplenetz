class CreateCases < ActiveRecord::Migration
  def change
    create_table :cases do |t|
      t.string :industry
      t.string :org_size
      t.string :country
      t.string :email

      t.timestamps
    end
  end
end
