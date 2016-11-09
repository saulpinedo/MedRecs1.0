class PatientsController < ApplicationController
	def index
		@patients = Patient.all
	end

	def show
		@patient = Patient.find(params[:id])
	end

	def new
		@patient = Patient.new
		@diagnosis=Diagnosis.all
	end

	def create
            @patients = Patient.new(patient_params)
                if @patients.save
                    redirect_to @patients, notice:"El paciente se agrego a la base de datos exitosamente."
                else
                    render :new
                end
    end
		def edit
     @patient = Patient.find(params[:id])
		end

		def update

			@patient=Patient.find(params[:id]).update(patient_params)
				  flash[:success] = "Diagnóstico Eliminado."
					redirect_to patients_url
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
