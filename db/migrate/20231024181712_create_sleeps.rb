class CreateSleeps < ActiveRecord::Migration[7.0]
  def change
    create_table :sleeps do |t|

      t.datetime :start_time 
      t.datetime :end_time  
      t.string :quality,       null: false 
      t.text :memo       
      t.references :user,       null: false, foreign_key: true 
      t.timestamps null: false
    end
  end
end
