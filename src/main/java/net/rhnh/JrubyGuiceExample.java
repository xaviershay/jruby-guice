package net.rhnh;

import com.google.inject.Guice;
import com.google.inject.Injector;

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
    Injector injector = Guice.createInjector(new ComplexModule());
    ComplexApp app = injector.getInstance(ComplexApp.class);
    app.run();
  }
}
