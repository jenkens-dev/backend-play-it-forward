class CreateEventVolunteers < ActiveRecord::Migration[6.0]
  def change
    create_table :event_volunteers do |t|
      t.integer :event_id
      t.integer :volunteer_id

      t.timestamps
    end
  end
end
