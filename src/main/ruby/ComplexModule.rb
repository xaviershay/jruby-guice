require 'java'

java_package 'net.rhnh'

java_import 'com.google.inject.Provides'
java_import 'com.google.inject.Binder'

# Normally modules are pretty simple so you may as well just implement them in
# Java.  This shows that you don't have to though.
class ComplexModule
  # Don't java_import Module, it conflicts with a JRuby class of the same name.
  java_implements 'com.google.inject.Module'

  # Implementing the Module interface. I haven't figured out how to get
  # inheritance from AbstractModule to work yet.
  java_signature 'void configure(Binder binder)'
  def configure(binder)
    binder.
      bind(java::SimpleLogger.java_class).
      to(java::PrefixLogger.java_class)
  end

  # This is superfluous since Guice wires up concrete classes automatically,
  # but demonstrates how you could add complex construction logic for a
  # provider.
  java_annotation 'Provides'
  java_signature 'BareLogger provideBareLogger()'
  def provide_bare_logger
    BareLogger.new
  end

  protected

  # Explicit references to Java classes are required if passing those
  # references into Guice.
  def java
    Java::net.rhnh
  end
end
