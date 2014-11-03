# -*- coding: utf-8 -*-
require 'net/http'
require 'json'
require 'timeout'

# ==function list==
# API.key registration
# Access to authorized JSON api weblink.
# =================
module CrunchbaseAcademic
  class API
  	class << self; attr_accessor :timeout_limit, :key end
  	CB_URL = 'http://api.crunchbase.com/v/2/'
  	@timeout_limit = 60

    def self.fetch(permalink, object)
      uri = CB_URL + "#{object}/#{permalink}"
      get_json_response(uri)
    end

    private

  	def self.get_json_response(uri)
      raise CrunchException, "API key required, visit http://developer.crunchbase.com" unless @key
      uri = uri + "#{uri.match('\?') ? "&" : "?"}user_key=#{@key}"
       
      resp = Timeout::timeout(@timeout_limit) {
        get_url_following_redirects(uri, @redirect_limit)
      }
      resp = resp.gsub(/[[:cntrl:]]/, '')
      
      parsed_info = JSON.parse(resp)
      raise CrunchException, parsed_info["error"] if parsed_info.class == Hash && parsed_info["error"]
      
      return parsed_info
    end

    def self.get_url_following_redirects(uri_str, limit = 10)
      raise CrunchException, 'HTTP redirect too deep' if limit == 0

      url = URI.parse(uri_str)
      response = Net::HTTP.start(url.host, url.port) { |http| http.get(url.request_uri) }
      case response
        when Net::HTTPSuccess, Net::HTTPNotFound
          response.body
        when Net::HTTPRedirection
          get_url_following_redirects(response['location'], limit - 1)
        else
          response.error!
      end
    end
  end
end
