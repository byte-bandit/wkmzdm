class Visit < ActiveRecord::Base
    has_many :visitors

    def self.createNewVisit
        if Visit.create :timeframe => 7.days.from_now.middle_of_day()
            puts "New visit created."
        else
            puts "Failed to create new visit"
        end
    end
end
