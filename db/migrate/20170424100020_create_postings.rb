class CreatePostings < ActiveRecord::Migration
  def change
    create_table :postings do |t|
      t.string :title 
      t.text   :body
      t.timestamps 
    end
  end
end
