module CrunchBaseV2
	class Person < Common
		OBJECT_NAME = 'person'
    attr_reader :first_name, :last_name, :permalink, :birthplace,
      					:born_on_year, :born_month, :born_day, :born_on, :experience,
      					:founded_company, :degrees, :advisor_at, :investments

		def initialize(json)
			@permalink 			 ||= json['data']['properties']['permalink']
			@born_on 				 ||= json['data']['properties']['born_on']
			@born_on_year 	 ||= json['data']['properties']['born_on_year']
			@founded_company ||= json['data']['relationships']['founded_companies']
			@experience 		 ||= json['data']['relationships']['experience']
			@advisor_at  		 ||= json['data']['relationships']['advisor_at']
			@degrees 				 ||= json['data']['relationships']['degrees']
			@investments 		 ||= json['data']['relationships']['investments']
		end
	end
end
