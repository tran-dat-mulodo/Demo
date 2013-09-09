class CreatePostTests < ActiveRecord::Migration
  def change
    create_table :post_tests do |t|
      t.string :user
      t.string :pass

      t.timestamps
    end
  end
end
