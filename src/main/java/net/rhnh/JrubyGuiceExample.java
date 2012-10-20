package net.rhnh;

import com.google.inject.AbstractModule;
import com.google.inject.Guice;
import com.google.inject.Injector;

public class JrubyGuiceExample {
  public static void main(String[] args) {
    simplestExample();
    interfaceExample();
  }

  public static void simplestExample() {
    Injector injector = Guice.createInjector();
    SimplestApp app = injector.getInstance(SimplestApp.class);
    app.run();
  }

  public static void interfaceExample() {
    Injector injector = Guice.createInjector(new AbstractModule() {
      @Override protected void configure() {
        bind(SimpleLogger.class).to(PrefixLogger.class);
      }
    });
    InterfaceApp app = injector.getInstance(InterfaceApp.class);
    app.run();
  }
}
