class Appointment
  
  attr_accessor :date, :patient, :doctor
  @@all = []
  
  def initialize(date, patient, doctor)
    @name = name 
    @patient = patient
    @doctor = doctor
    
    save
  end 
  
  def save 
    @@all << self 
  end 
end 