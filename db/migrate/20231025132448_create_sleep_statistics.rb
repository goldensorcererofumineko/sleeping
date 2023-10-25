class CreateSleepStatistics < ActiveRecord::Migration[7.0]
  def change
    create_table :sleep_statistics do |t|
      t.string :period,                   null: false                    
      t.decimal :average_sleep_duration,  null: false                    
      t.decimal :average_sleep_quality,   null: false  
      t.references :sleep,                null: false, foreign_key: true                  
      t.references :user,                 null: false, foreign_key: true 
      t.timestamps
    end
  end
end
