require 'java'

java_package 'net.rhnh'

java_import 'com.google.inject.Inject'

# Demonstrates both constructor and setter injection. For the constructor,
# an interface is asked for and a concrete class is provided.
class ComplexApp

  java_annotation 'Inject'
  java_signature 'void MyApp(SimpleLogger logger)'
  def initialize(logger)
    @logger = logger
  end

  # attr_accessor does not work here, though you could easily meta-program your own version.
  java_annotation 'Inject'
  java_signature 'void setBareLogger(BareLogger logger)'
  def bare_logger=(x)
    @bare_logger = x
  end

  def run()
    @logger.info("Hello from Ruby")
    @bare_logger.info("Hello again")
  end
end
