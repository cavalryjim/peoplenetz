class CreateIndustryTopics < ActiveRecord::Migration
  def change
    create_table :industry_topics do |t|
      t.string :title
      t.text :content
      t.integer :position
      t.integer :industry_id

      t.timestamps
    end
  end
end
