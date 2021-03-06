ActiveAdmin.register LibraryTopic do
  index do
    column :library
    column :title do |topic|
      link_to topic.title, edit_admin_library_topic_path(topic)
    end
    column :position
    column :content do |topic|
      topic.content.html_safe
    end
    column :delete do |topic|
      link_to image_tag('icons/cross.png'), admin_library_topic_path(topic), :confirm => "Select 'OK' to delete.", :method => :delete
    end
  end
end
