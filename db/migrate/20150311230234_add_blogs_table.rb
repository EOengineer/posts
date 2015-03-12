class AddBlogsTable < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.string :title
      t.text :body
    end
  end
end
