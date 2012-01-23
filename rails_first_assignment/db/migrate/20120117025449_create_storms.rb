class CreateStorms < ActiveRecord::Migration
  def change
    create_table :storms do |t|
      t.string :day
      t.float :snowfall

      t.timestamps
    end
  end
end
