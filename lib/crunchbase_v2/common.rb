module CrunchBaseV2
  class Common
  	def self.get(permalink, object)
  		API.fetch(permalink, object)
  	end
  end
end
