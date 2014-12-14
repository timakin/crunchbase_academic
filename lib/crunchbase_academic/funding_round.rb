module CrunchbaseAcademic
  class FundingRound < Common
    OBJECT_NAME = 'funding-round'
    attr_reader :money_raised_usd, :announced_on, :announced_on_year

    def initialize(json)
      @money_raised_usd   ||= json['data']['properties']['money_raised_usd']
      @announced_on       ||= json['data']['properties']['announced_on']
      @announced_on_year  ||= json['data']['properties']['announced_on_year']
    end
  end
end
