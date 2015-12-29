# RbLibText
A little text processing library for Ruby.

[![Build Status](https://travis-ci.com/peoplepattern/rb-lib-text.svg?token=6qVa5jHEpFstFuG6QbBE)](https://travis-ci.com/peoplepattern/rb-lib-text)

## Overview
The tokenization has been tuned to work well with text conventions commonly used in social media such as Twitter, and supports URLs, hashtags, emails and @-mentions cleanly.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rb_lib_text'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rb_lib_text

## Usage

```ruby
require "rb_lib_text"
RbLibText.tokens('this is a test sentance!')
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/peoplepattern/rb_lib_text. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

## Acknowledgements

Developed with :heart: at [People Pattern Corporation](https://peoplepattern.com)
