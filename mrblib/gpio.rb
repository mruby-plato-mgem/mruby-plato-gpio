#
# Plato::GPIO class
#
module Plato
  class GPIO
    LOW = 0
    HIGH = 1

    def initialize(pin)
      @pin = pin
    end

    def read; end
    def write(data); end

    def low; write(LOW); end
    def high; write(HIGH); end
    def low?; read == LOW; end
    def high?; read == HIGH; end
  end
end
