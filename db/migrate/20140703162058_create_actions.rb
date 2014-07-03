class CreateActions < ActiveRecord::Migration
  def change
    create_table :actions do |t|
      t.string :description

      t.timestamps
    end
  end
end
