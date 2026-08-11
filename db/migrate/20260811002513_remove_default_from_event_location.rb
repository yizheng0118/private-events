class RemoveDefaultFromEventLocation < ActiveRecord::Migration[8.1]
  def change
    change_column_default :events, :location, nil
  end
end
