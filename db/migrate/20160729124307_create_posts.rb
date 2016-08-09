class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|

        t.string "links"
        t.string "title"
        t.string "image_link"
        t.string "abstract"
      t.timestamps null: false
    end
  end
end
