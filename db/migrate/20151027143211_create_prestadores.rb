class CreatePrestadores < ActiveRecord::Migration
  def change
    create_table :prestadores do |t|
      t.string :nombre
      t.decimal :basico_mensual

      t.timestamps null: false
    end
  end
end
