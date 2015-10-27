class LiquidacionesController < ApplicationController
  def index
  	@liquidaciones = Liquidacion.all
  end

  def show
  	@liquidacion = Liquidacion.find(params[:id])
  	@prestador = @liquidacion.prestador
  	@consumos = @liquidacion.consumos
  	@prestaciones = @liquidacion.prestaciones.order('domiciliaria')
  	@liquidacion_total = @liquidacion.calcular_liquidacion_total
  end
end
