class Prestacion < ActiveRecord::Base
  belongs_to :liquidacion
  belongs_to :prestador

  before_save :calcular_total	

  private

  def calcular_total
  	self.total = (precio * cantidad)
		if fecha.saturday? or fecha.sunday?
			self.total = total * 1.5
		elsif fecha.hour < 8 or fecha.hour > 20
			self.total = total * 1.35
		else
			self.total = (precio * cantidad)
		end
		if domiciliaria == true
			self.total = total * 1.25
			self.total = total + (km * liquidacion.prestador.precio_km)
		end
  end
end
