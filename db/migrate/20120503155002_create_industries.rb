class CreateIndustries < ActiveRecord::Migration
  def change
    create_table :industries do |t|
      t.string :name
      t.text :description
      t.text :pnetz_solution

      t.timestamps
    end
  end
end
