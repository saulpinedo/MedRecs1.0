class DiagnosesController < ApplicationController
    def index
        @diagnosis = Diagnose.all
    end

    def show
        @diagnosi = Diagnose.find(params[:id])
    end

    def new
       @diagnosi = Diagnose.new
    end

    def create
            @diagnosi = Diagnose.new(diagnosis_params)
                if @diagnosi.save
                    redirect_to @diagnosi
                  else
                    redirect_to diagnoses_path
                  end

    end

    def destroy
        @diagnoses = Diagnose.find(params[:id]).destroy
        flash[:success] = "Diagnóstico Eliminado."
        redirect_to @diagnoses
    end

    private

    def diagnosis_params
            params.require(:diagnose).permit(:diagnosis, :description)
    end
end
