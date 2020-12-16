class Cult 

    @@all = []

    attr_accessor :name, :location, :founding_year, :slogan

    def initialize name, location, founding_year, slogan
        @name = name
        @location = location
        @founding_year = founding_year
        @slogan = slogan
        @@all << self
    end
# helper/class
    def self.all
        @@all
    end
    
    def all_oaths
        BloodOath.all.select { |oath| oath.cult == self}
    end

    def self.find_by_name name
        all.find{ |cult| cult.name == name }
    end

    def self.find_by_location location 
        all.find{ |cult| cult.location == location }
    end

    def self.find_by_founding_year founding_year
        all.find{ |cult| cult.founding_year == founding_year }
    end
    
    date = "12/16/20"
# instance

    def recruit_follower follower, date
        BloodOath.new(self, follower, date)
    end
    
    def cult_population
        all_oaths.length
    end


end