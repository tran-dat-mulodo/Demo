class CreatePostTestrspecs < ActiveRecord::Migration
  def change
    create_table :post_testrspecs do |t|

      t.timestamps
    end
  end
end
