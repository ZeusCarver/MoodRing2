class CreateMoods < ActiveRecord::Migration
  def change
    create_table :moods do |t|
      t.integer :level

      t.timestamps
    end
  end
end
