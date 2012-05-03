ActiveAdmin.register Industry do
  index do
    column :id
    column :name do |industry|
      link_to industry, edit_admin_industry_path(industry)
    end
    column :description
    column :pnetz_response
    column :delete do |industry|
      link_to image_tag('cross.png'), admin_industry_path(industry), :confirm => "Select 'OK' to delete.", :method => :delete
    end
    
  end
end
