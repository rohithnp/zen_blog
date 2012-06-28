class CreateZenPosts < ActiveRecord::Migration
  def change
    create_table :zen_posts do |t|
      t.string :title
      t.string :content

      t.timestamps
    end
  end
end
