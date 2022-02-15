class CreateBlogs < ActiveRecord::Migration[6.0]
  def change
    create_table :blogs do |t|
     t.string :title
     t.text :content
    end
  end
end
