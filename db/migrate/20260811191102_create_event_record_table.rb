class CreateEventRecordTable < ActiveRecord::Migration[8.1]
  def change
    create_table :event_records do |t|
      t.belongs_to :user
      t.belongs_to :event
      t.timestamps
    end
  end
end
