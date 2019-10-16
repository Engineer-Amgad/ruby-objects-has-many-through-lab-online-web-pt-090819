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
    appointment.new(date, patient, self)
  end 
  
  def patients
    Appointment.all.select {|patient| patient.doctor == self}
  end 
  
end 