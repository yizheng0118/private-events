class AddLocationToEvent < ActiveRecord::Migration[8.1]
  def change
    add_column :events, :location, :string, default: "n/a", null: false
  end
end
