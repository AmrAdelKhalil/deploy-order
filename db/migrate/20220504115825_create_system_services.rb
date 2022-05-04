class CreateSystemServices < ActiveRecord::Migration[7.0]
  def change
    create_table :system_services do |t|
      t.string :name
      t.string :tribe
      t.string :squad

      t.timestamps
    end
  end
end
