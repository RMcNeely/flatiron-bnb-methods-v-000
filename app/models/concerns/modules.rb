module Modules

 extend ActiveSupport::Concern
 class_methods do


  def city_openings

  end

  def highest_ratio_res_to_listings

  end

  def most_res
    cities = []
    self.all.each {|c| cities << Hash[c.name, c.listings.count]}
    binding.pry
    self.find_by(name: cities.max_by {|k,v| v}.keys.first)

  end
end
end
