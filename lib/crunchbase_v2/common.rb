module CrunchBaseV2
  class Common
  	OBJECT_NAME = 'undefined'
  	
  	def get(permalink)
  		data = API.fetch(permalink, self::OBJECT_NAME)
  		self.new(data)
  	end
  end
end
