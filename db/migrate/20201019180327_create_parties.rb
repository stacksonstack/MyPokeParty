class CreateParties < ActiveRecord::Migration[6.0]
  def change
    create_table :parties do |t|
        t.integer :user_id
        t.integer :pokemon1_id
        t.integer :pokemon2_id
        t.integer :pokemon3_id
        t.integer :pokemon4_id
        t.integer :pokemon5_id
        t.integer :pokemon6_id

      t.timestamps
    end
  end
end
