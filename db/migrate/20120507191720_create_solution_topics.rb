class CreateSolutionTopics < ActiveRecord::Migration
  def change
    create_table :solution_topics do |t|
      t.string :title
      t.text :content
      t.integer :position
      t.integer :solution_id

      t.timestamps
    end
  end
end
