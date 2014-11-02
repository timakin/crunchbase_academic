module CrunchBaseV2
	class Person < Common
		OBJECT_NAME = 'person'
    attr_reader :first_name, :last_name, :permalink, :birthplace,
      					:born_year, :born_month, :born_day, :born_on, :experience,
      					:founded_company, :degrees, :advisor_at, :investments


		def get(permalink)
			super
		end

		def initialize(json)
			@permalink = json['data']['properties']['permalink']
		end
	end
end
