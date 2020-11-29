class Doctor
    attr_accessor :name

    @@all = []

    def initialize (name)
        @@all <<self
        @name = name
    end
    def self.all
        @@all
    end
    def appointments
        Appointment.all.select do |appointment|
            appointment.doctor == self
        end
    end
    
    def new_appointment (patient, date)
        Appointment.new(date, patient, self)
    end
    def patients
        patients = []
        find_patient.each do |patient|
          patients << patient.patient
        end
        patients
      end
end 