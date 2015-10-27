class CreateLiquidaciones < ActiveRecord::Migration
  def change
    create_table :liquidaciones do |t|
      t.references :prestador, index: true, foreign_key: true
      t.integer :mes

      t.timestamps null: false
    end
  end
end
