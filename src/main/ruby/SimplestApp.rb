require 'java'

java_package 'net.rhnh'

java_import 'com.google.inject.Inject'

# Demonstrates constructor injection of concrete classes.
class SimplestApp
  java_annotation 'Inject'
  java_signature 'void MyApp(BareLogger logger)'
  def initialize(logger)
    @logger = logger
  end

  def run
    @logger.info("Hello from Ruby")
  end
end
