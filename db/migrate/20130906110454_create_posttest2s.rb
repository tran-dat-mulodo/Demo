class CreatePosttest2s < ActiveRecord::Migration
  def change
    create_table :posttest2s do |t|
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end
