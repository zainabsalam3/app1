class CreateCoordinators < ActiveRecord::Migration[7.0]
  def change
    create_table :coordinators do |t|
      t.string :name
      t.string :phone_number
      t.string :email

      t.timestamps
    end
  end
end
