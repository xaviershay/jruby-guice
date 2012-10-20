require 'java'

java_package 'net.rhnh'

java_import 'com.google.inject.Inject'

class MyApp
  java_annotation 'Inject'
  java_signature 'void MyApp(MyLogger logger)'
  def initialize(logger)
    @logger = logger
  end

  def run
    @logger.info("Hello from Ruby")
  end
end
