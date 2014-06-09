# Dassets::Erb

Dassets [engine](https://github.com/redding/dassets#compiling) for compiling dynamic assets written in Erb.

## Usage

Register the engine:

```ruby
# in config/assets.rb
require 'dassets'
require 'dassets-erb'

Dassets.configure do |c|

  c.source "/path/to/assets") do |s|
    s.engine 'erb', Dassets::Erb::Engine
  end

end
```

Add `.erb` to any source files in your source path.  Dassets will compile their content using Erb, remove the `.erb` extension, and write the output to the output path.

## Installation

Add this line to your application's Gemfile:

    gem 'dassets-erb'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install dassets-erb

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
