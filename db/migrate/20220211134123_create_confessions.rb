class CreateConfessions < ActiveRecord::Migration[7.0]
  def change
    create_table :confessions do |t|
      t.string :day
      t.time :hour
  
      t.timestamps
    end
  end
end
