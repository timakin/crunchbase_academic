module CrunchBaseV2
  class Common
  	OBJECT_NAME = 'undefined'
  	
  	def get(permalink)
  		data = API.fetch(permalink, self::OBJECT_NAME)
  		new_class = self.new(data)
  		return new_class
  	end
  end
end
