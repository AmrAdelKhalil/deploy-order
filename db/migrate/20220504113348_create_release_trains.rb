class CreateReleaseTrains < ActiveRecord::Migration[7.0]
  def change
    create_table :release_trains do |t|
      t.string :engineering_manager
      t.string :backend
      t.date :rt_date

      t.timestamps
    end
  end
end
