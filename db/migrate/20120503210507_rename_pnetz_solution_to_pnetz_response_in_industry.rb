class RenamePnetzSolutionToPnetzResponseInIndustry < ActiveRecord::Migration
  def up
    rename_column :industries, :pnetz_solution, :pnetz_response
  end

  def down
    rename_column :industries, :pnetz_response, :pnetz_solution
  end
end
