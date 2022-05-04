class CreateReleaseTrainSystemServices < ActiveRecord::Migration[7.0]
  def change
    create_table :release_trains_system_services, id: false do |t|
      t.belongs_to :release_train
      t.belongs_to :system_service
      t.timestamps
    end
  end
end
