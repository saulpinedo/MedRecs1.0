class DoctorsController < ApplicationController
    def index
        @doctors = Doctor.all
    end
    
    def show
        @doctors = Doctor.find(params[:id])
    end
    
    def new
       @doctors = Doctor.new 
    end
    
    def create
        @doctors = Doctor.new(post_params)
            if @doctors.save
                redirect_to @doctors
            else
                render :new
            end
    end
    
    def destroy
        @doctors = Doctor.find(params[:id]).destroy
            flash[:success] = "Medico Eliminado."
            redirect_to @doctors
    end
        
    private
        
    def post_params
            params.require(:doctor).permit(:name, :specialty, :cmdv)
    end    
end
