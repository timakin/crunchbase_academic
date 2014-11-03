module CrunchbaseAcademic
  class Common
  	OBJECT_NAME = 'undefined'
  	
  	def self.get(permalink)
  		data = API.fetch(permalink, self::OBJECT_NAME)
  		new_class = self.new(data)
  		return new_class
  	end
  end
end
