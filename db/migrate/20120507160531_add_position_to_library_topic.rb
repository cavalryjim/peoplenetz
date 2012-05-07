class AddPositionToLibraryTopic < ActiveRecord::Migration
  def change
    add_column :library_topics, :position, :integer
  end
end
