class AddStartOfEventAndEndOfEventToEvents < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :start_of_event, :datetime
    add_column :events, :end_of_event, :datetime 
  end
end
