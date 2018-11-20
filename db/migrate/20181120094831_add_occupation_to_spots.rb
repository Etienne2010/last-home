class AddOccupationToSpots < ActiveRecord::Migration[5.2]
  def change
    add_column :spots, :occupation, :string, default: ""
  end
end
