class AddPictureToFlat < ActiveRecord::Migration[7.1]
  def change
    add_column :flats, :picture, :string
  end
end