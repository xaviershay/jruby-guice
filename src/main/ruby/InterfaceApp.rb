require 'java'

java_package 'net.rhnh'

java_import 'com.google.inject.Inject'

# Demonstrates constructor injection of an interface that is
# bound in the guice configuration.
class InterfaceApp
  java_annotation 'Inject'
  java_signature 'void MyApp(SimpleLogger logger)'
  def initialize(logger)
    @logger = logger
  end

  def run
    @logger.info("Hello from Ruby")
  end
end
