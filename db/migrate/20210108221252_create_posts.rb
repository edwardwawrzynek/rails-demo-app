class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :description
      t.string :title
      t.datetime :date_posted

      t.timestamps
    end
  end
end
