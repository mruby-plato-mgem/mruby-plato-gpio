# mruby-plato-gpio   [![Build Status](https://travis-ci.org/mruby-plato/mruby-plato-gpio.svg?branch=master)](https://travis-ci.org/mruby-plato/mruby-plato-gpio)
Plato::GPIO class (General Purpose Input/Output library)
## install by mrbgems
- add conf.gem line to `build_config.rb`

```ruby
MRuby::Build.new do |conf|

  # ... (snip) ...

  conf.gem :git => 'https://github.com/mruby-plato/mruby-plato-gpio'
end
```

## example
```ruby
io = Plato::GPIO.new(0)
io.high
```

## License
under the MIT License:
- see LICENSE file
