class Doctor
  
  attr_accessor :name 
  
  @@all = []
  
  def initialize(name)
    @name = name 
    save
  end 
  
  def save 
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 
  
  def new_appointment(patient,date)
    appointment = Appointment.new(date, patient, self)
  end 
  
  def patients
    appointments.collect {|patient| patient.patient}
  end 
  
  def appointments
    Appointment.all.select {|appointment| appointment.doctor == self}
  end 
  
end 