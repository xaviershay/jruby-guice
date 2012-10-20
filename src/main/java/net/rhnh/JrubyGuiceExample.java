package net.rhnh;

import com.google.inject.Guice;
import com.google.inject.Injector;

public class JrubyGuiceExample {
  public static void main(String[] args) {
    Injector injector = Guice.createInjector();
    MyApp app = injector.getInstance(MyApp.class);
    app.run();
  }
}
