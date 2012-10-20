Guice in your JRuby
===================

Demonstrates how to wire up Ruby classes using [Google Guice][1], including:

* Constructor injection
* Setter injection
* Custom Guice module in Ruby

I wrote a [blog post][2] introducing the idea.

Getting Started
---------------

    mvn package
    java -jar target/jruby-guice-1.0.jar

If using an IDE, you may have to configure it to explicitly run `mvn compile`
before running the project.

Start reading in `src/main/java/net/rhnh/JrubyGuiceExample.java` and `src/main/ruby/SimplestApp.rb`.

Why
---

Perhaps you are integrating Ruby into an existing Java framework. Standalone,
this is a terrible idea.

[1]: http://code.google.com/p/google-guice/
[2]: http://rhnh.net/2012/10/20/guice-in-your-jruby
