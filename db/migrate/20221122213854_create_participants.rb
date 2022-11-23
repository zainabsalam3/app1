class CreateParticipants < ActiveRecord::Migration[7.0]
  def change
    create_table :participants do |t|
      t.string :name
      t.string :gender
      t.string :date_of_birth

      t.timestamps
    end
  end
end
