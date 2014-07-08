Vanity.playground.on_datastore_error =
  Proc.new do |error, klass, method, arguments|
    puts "I'm sending this to airbrake!"
  end