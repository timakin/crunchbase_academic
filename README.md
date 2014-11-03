# CrunchbaseV2

TODO: Write a gem description

## Installation

Add this line to your application's Gemfile:

    gem 'crunchbase_academic'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install crunchbase_academic

## Usage

		$ require 'crunchbase_academic'
		$ CrunchbaseAcademic::API.key = 'your_api_auth_key'
		$ test = CrunchbaseAcademic::Person('steve-jobs')
		$ puts test.founded_company
		$ # It'll show the parameters of jobs owned companies.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
