class DiagnosesController < ApplicationController
    def index
        @diagnoses = Diagnosis.all
    end
    
    def show
        @diagnoses = Diagnosis.find(params[:id])
    end
    
    def new
       @diagnoses = Diagnosis.new 
    end
    
    def create
            @diagnoses = Diagnosis.new(post_params)
                if @diagnoses.save
                    redirect_to @diagnoses
                else
                    render :new
                end
    end
    
    def destroy
        @diagnoses = Diagnosis.find(params[:id]).destroy
        flash[:success] = "Diagnóstico Eliminado."
        redirect_to @diagnoses
    end
        
    private
        
    def post_params
            params.require(:diagnosis).permit(:diagnosis, :description)
    end    
end
