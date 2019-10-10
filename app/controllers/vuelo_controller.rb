class VueloController < ApplicationController
    before_action :set_aerolinea
    before_action :set_vuelo, only: [:show, :update, :destroy]

    #get /aerolinea/:aerolinea_id/vuelos
    def index
        json_response(@aerolinea.vuelo)
    end
    
    def show
        json_response(@vuelo)
    end

    def create
        @aerolinea.vuelo.create!(vuelo_params)
        json_response(@aerolinea,:created)
    end

    def update
        @vuelo.update(vuelo_params)
        head :no_content
    end

    def destroy
        @vuelo.destroy
        head :no_content
    end


    private
    def vuelo_params
        params.permit(:numvuelo,:fechaprogramado,:fechareal,:estado,:direccion)
    end

    def set_aerolinea
        @aerolinea = Aerolinea.find(params[:aerolinea_id])
    end
    def set_vuelo
        @vuelo = @aerolinea.vuelo.find_by!(id: params[:id]) if @aerolinea
    end
end
