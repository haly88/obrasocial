class Prestador < ActiveRecord::Base
	has_many :liquidaciones
	has_many :prestaciones

	validates :nombre, :uniqueness => true
	validates :nombre, :basico_mensual, :precio_km, :presence => true

end
