class Appointment
    attr_reader :patient, :date, :doctor
  
    @@all = []
  
    def initialize(date, patient, doctor)
      @patient = patient
      @date = date
      @doctor = doctor
  
      save
    end
  
    def save
      self.class.all << self
    end
  
    def self.all
      @@all
    end
  
  end