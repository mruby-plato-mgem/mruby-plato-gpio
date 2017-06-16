# Plato::GPIO class

assert('GPIO', 'class') do
  assert_equal(Plato::GPIO.class, Class)
end

assert('GPIO', 'constants') do
  assert_equal(Plato::GPIO::LOW, 0)
  assert_equal(Plato::GPIO::HIGH, 1)
end

assert('GPIO', 'new') do
  Plato::GPIO.new(0)
end

assert('GPIO', 'new - argument error') do
  assert_raise(ArgumentError) {Plato::GPIO.new}
  assert_raise(ArgumentError) {Plato::GPIO.new(0, 0)}
end

assert('GPIO', 'high/low/high?/low?') do
  e = nil
  begin
    io = Plato::GPIO.new(0)
    io.high
    io.low
    io.high?
    io.low?
  rescue => e
  end
  assert_nil(e)
end

assert('GPIO', 'read') do
  e = nil
  begin
    Plato::GPIO.new(0).read
  rescue => e
  end
  assert_nil(e)
end

assert('GPIO', 'write') do
  e = nil
  begin
    Plato::GPIO.new(0).write(0)
  rescue => e
  end
  assert_nil(e)
end

assert('GPIO', 'write - argument error') do
  assert_raise(ArgumentError) {Plato::GPIO.new(0).write}
  assert_raise(ArgumentError) {Plato::GPIO.new(0).write(1,2)}
end
