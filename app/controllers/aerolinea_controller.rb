class AerolineaController < ApplicationController
    before_action :set_aerolinea, only: [:show, :update, :destroy]
    #Get Aerolineas
    def index
        @aerolineas = Aerolinea.all
        json_response(@aerolineas)
    end
    #Post Aerolinea
    def create
        @aerolinea = Aerolinea.create!(aerolinea_params)
        json_response(@aerolinea, :created)
    end
    #Get Aerolinea /:id
    def show
        json_response(@aerolinea)
    end
    #Put
    def update
        @aerolinea.update(@aerolinea_params)
    end

    #Delete /todos/:id
    def destroy
        @aerolinea.destroy
        head :no_content
    end

    private
    def aerolinea_params
        #whitelist params
        params.permit(:idAerolinea, :nombre, :iatacode, :oaci)
    end


    def set_aerolinea
        @aerolinea = Aerolinea.find(params[:id])
    end

end
