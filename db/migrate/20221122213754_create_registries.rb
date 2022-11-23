class CreateRegistries < ActiveRecord::Migration[7.0]
  def change
    create_table :registries do |t|
      t.integer :coordinator_id
      t.integer :participant_id
      t.string :name
      t.string :location
      t.string :state

      t.timestamps
    end
  end
end
