require "./lib/values/place"

class DeterminePlace

  def self.determine
    print "Enter ZIP code: "

    zip = gets.chomp.to_i

    Place.new(zip)
  end

end
