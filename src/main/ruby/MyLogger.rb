require 'java'

java_package 'net.rhnh'

class MyLogger
  def info(msg)
    puts "[INFO] %s" % msg
  end
end
