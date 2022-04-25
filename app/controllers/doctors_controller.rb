class DoctorsController < ApplicationController

  def show
    @doctor = Doctor.find(params[:id])
  end 

  def destroy
    @doctor = Doctor.find(params[:id])
    @doctor.doctor_patients.destroy(params[:patient_id])
 
    redirect_to "/doctors/#{@doctor.id}"
  end
  

end 