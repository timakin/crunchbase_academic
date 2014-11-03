module CrunchbaseAcademic
	class Organization < Common
		OBJECT_NAME = 'organization'
		attr_reader :total_funding_usd, :products, :news, :founded_on, :founded_on_year

		def initialize(json)
			@founded_on				 ||= json['data']['properties']['founded_on']
			@founded_on_year   ||= json['data']['properties']['founded_on_year']
			@total_funding_usd ||= json['data']['properties']['total_funding_usd']
			@products 				 ||= json['data']['relationships']['products'] 
			@news							 ||= json['data']['relationships']['news'] 
		end
	end
end