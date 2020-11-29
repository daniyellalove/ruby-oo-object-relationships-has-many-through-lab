class Doctor
    attr_reader :name
  
    @@all = []
  
    def initialize(name)
      @name = name
      save
    end
  
    def save
      self.class.all << self
    end
  
    def appointments
      find_patient
    end
  
    def new_appointment(patient, date)
      Appointment.new(date, patient, self)
    end
  
    def find_patient
      Appointment.all.select do |appt|
        appt.doctor == self
      end
    end
  
    def patients
      patients = []
  
      find_patient.each do |patient|
        patients << patient.patient
      end
      patients
    end
  
    def self.all
      @@all
    end
  
  end
