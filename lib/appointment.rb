
class Appointment
    @@all = []

    attr_accessor :date, :doctor, :patient

    def initialize(date, patient, doctor)
        @date = date
        @patient = patient
        @doctor = doctor
        @@all <<  self
    end

    def self.all
        @@all
    end

end
