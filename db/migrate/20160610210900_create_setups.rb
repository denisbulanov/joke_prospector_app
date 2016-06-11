class CreateSetups < ActiveRecord::Migration
  def change
    create_table :setups do |t|
      t.integer :user_id
      t.text :body

      t.timestamps

    end
  end
end
