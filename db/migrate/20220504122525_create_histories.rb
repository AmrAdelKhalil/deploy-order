class CreateHistories < ActiveRecord::Migration[7.0]
  def change
    create_table :histories do |t|
      t.references :release_train, null: false, foreign_key: true
      t.integer :version
      t.string :run_result

      t.timestamps
    end
  end
end
