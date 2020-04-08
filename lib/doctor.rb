class Doctor 
  attr_accessor :name, :date, :patient
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self 
  end
  
  def self.all 
    @@all
  end
  
  def appointments
    Appointment.all.select {|appt| appt.doctor == self}
  end
   
  def new_appointment(date, patient)
    Appointment.new(date, self, patient)
  end
  
  def patients
    appointments.map {|appt| appt.patient}
  end
  
end