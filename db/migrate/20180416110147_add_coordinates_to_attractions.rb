class AddCoordinatesToAttractions < ActiveRecord::Migration[5.1]
  def change
    add_column :attractions, :address, :string
    add_column :attractions, :latitude, :float
    add_column :attractions, :longitude, :float
  end
end
