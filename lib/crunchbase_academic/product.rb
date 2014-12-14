module CrunchbaseAcademic
  class Product < Common
    OBJECT_NAME = 'product'
    attr_reader :permalink, :launched_on, :launched_on_year

    def initialize(json)
      @permalink        ||= json['data']['properties']['permalink']
      @launched_on      ||= json['data']['properties']['launched_on']
      @launched_on_year ||= json['data']['properties']['launched_on_year']
    end
  end
end
