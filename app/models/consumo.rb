class Consumo < ActiveRecord::Base
  belongs_to :liquidacion

  validates :liquidacion, :insumo, :cantidad, :precio, :presence => true

end
