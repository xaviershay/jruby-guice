require 'java'

java_package 'net.rhnh'

class PrefixLogger
  java_implements 'SimpleLogger'

  # Explicit signature is required to match up this implementation to
  # the interface.
  java_signature 'void info(String msg)'
  def info(msg)
    puts "[INFO] %s" % msg
  end
end
