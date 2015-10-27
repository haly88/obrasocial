class Liquidacion < ActiveRecord::Base
  belongs_to :prestador
  has_many :consumos
  has_many :prestaciones

  validates :prestador, :uniqueness => {:scope => [:mes]}
  validates :prestador, :mes, :presence => true

  def calcular_liquidacion_total
  	prestador.basico_mensual + consumos.sum(:total) + prestaciones.sum(:total)
  end
end
