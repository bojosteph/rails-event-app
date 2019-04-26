class ChangeColumnName < ActiveRecord::Migration[5.0]
  def change
    rename_column :rsvp_events, :user_id, :participant_id
    rename_column :rsvp_events, :event_id, :attending_event_id
  end
end
