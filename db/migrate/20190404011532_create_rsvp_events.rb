class CreateRsvpEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :rsvp_events do |t|
      t.integer :user_id
      t.integer :event_id

      t.timestamps
    end
  end
end
