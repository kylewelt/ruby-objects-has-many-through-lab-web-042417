class Doctor

  attr_accessor :appointments, :patients, :name

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    @appointments << appointment
    appointment.doctor = self
    binding.pry
  end

  def appointments
    @appointments
  end

  def patients
    self.appointments.map do |appointment|
      appointment.patient
    end
  end

end
