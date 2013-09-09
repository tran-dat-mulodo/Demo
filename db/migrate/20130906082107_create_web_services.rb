class CreateWebServices < ActiveRecord::Migration
  def change
    create_table :web_services do |t|

      t.timestamps
    end
  end
end
