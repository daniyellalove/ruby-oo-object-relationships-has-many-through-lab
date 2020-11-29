class Patient
    attr_reader :patient
  
    @@all = []
  
    def initialize(patient)
      @patient = patient
      save
    end
  
    def save
      self.class.all << self
    end
  
    def find_doctor
      Appointment.all.select do |appt|
        appt.patient == self
      end
    end
  
    def appointments
      find_doctor
    end
  
    def new_appointment(doctor, date)
      Appointment.new(date, self, doctor)
    end
  
    def doctors
      doctors = []
  
      find_doctor.each do |doctor|
        doctors << doctor.doctor
      end
      doctors
    end
  
    def self.all
      @@all
    end
  
  end 