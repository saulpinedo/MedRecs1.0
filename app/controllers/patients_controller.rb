class PatientsController < ApplicationController
	def index
		@patients = Patient.all
	end

	def show
		@patients = Patient.find(params[:id])
	end

	def new
		@patients = Patient.new
	end

	def create
            @patients = Patient.new(patient_params)
                if @patients.save
                    redirect_to @patients, notice:"El paciente se agrego a la base de datos exitosamente."
                else
                    render :new
                end
    end
    
    def destroy
        @patients = Diagnosis.find(params[:id]).destroy
        flash[:success] = "Diagnóstico Eliminado."
        redirect_to @patients
    end
        
        private
        
    def patient_params
        params.require(:patient).permit(:firstname, :middlename, :lastname, :address, :birth_date)
    end
    
end
