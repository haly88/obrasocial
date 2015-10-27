class DeletePrestadorIdFromPrestaciones < ActiveRecord::Migration
  def change
  	remove_column :prestaciones, :prestador_id
  end
end
