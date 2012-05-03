ActiveAdmin.register Solution do
  index do
    column :id
    column :name do |solution|
      link_to solution, edit_admin_solution_path(solution)
    end
    column :description
    column :pnetz_solution
    column :delete do |solution|
      link_to image_tag('cross.png'), admin_solution_path(solution), :confirm => "Select 'OK' to delete.", :method => :delete
    end
  end
end
