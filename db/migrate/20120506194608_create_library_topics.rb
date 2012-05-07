class CreateLibraryTopics < ActiveRecord::Migration
  def change
    create_table :library_topics do |t|
      t.string :title
      t.text :content
      t.integer :library_id

      t.timestamps
    end
  end
end
