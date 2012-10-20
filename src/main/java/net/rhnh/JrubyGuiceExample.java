package net.rhnh;

import com.google.inject.AbstractModule;
import com.google.inject.Guice;
import com.google.inject.Injector;
import com.google.inject.Provides;

public class JrubyGuiceExample {
  public static void main(String[] args) {
    simplestExample();
    complexExample();
  }

  public static void simplestExample() {
    Injector injector = Guice.createInjector();
    SimplestApp app = injector.getInstance(SimplestApp.class);
    app.run();
  }

  public static void complexExample() {
    Injector injector = Guice.createInjector(new AbstractModule() {
      @Override protected void configure() {
        bind(SimpleLogger.class).to(PrefixLogger.class);
      }

      // This is extraneous, but demonstrates how you could do
      // complex setup on objects.
      @Provides
      BareLogger provideBareLogger() {
        return new BareLogger();
      }
    });
    ComplexApp app = injector.getInstance(ComplexApp.class);
    app.run();
  }
}
