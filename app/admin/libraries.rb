ActiveAdmin.register Library do
  index do
    column :id
    column :name do |library|
      link_to library, edit_admin_library_path(library)
    end
    column :description
    column :delete do |library|
      link_to image_tag('cross.png'), admin_library_path(library), :confirm => "Select 'OK' to delete.", :method => :delete
    end
  end
end
