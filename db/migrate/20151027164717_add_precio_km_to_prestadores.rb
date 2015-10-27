class AddPrecioKmToPrestadores < ActiveRecord::Migration
  def change
    add_column :prestadores, :precio_km, :decimal
  end
end
