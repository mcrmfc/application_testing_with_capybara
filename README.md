#Application Testing with Capybara - Examples from the book
----------------------------------------------------

This [repo](http://github.com/mcrmfc/application_testing_with_capybara) contains the code examples from the book Application Testing with Capybara which is published by PACKT.

![application testing with capybara](1251OS.jpg)

This code is available as a download from the PACKT site and also here on Github.  I will always ensure Github has the latest copy of the code and then get the guys at PACKT to upload any updates, so it makes sense to check the Github copy regularly.

##Installation

As far as possible the examples will run locally but some require access to the internet.

In order to run the examples you will need to place the html directory (containing the example web pages) under the document root of a webserver of your choice, so long as your webserver allows directory listing you should then be able to navigate to http://localhost/html and see all the demo html files ordered by chapter.

To install the required Gems for the Ruby code run 'bundle install' in the root directory (assuming you have ruby, rubygems and the Bundler gem available).

##Cucumber Tests

The cucumber tests can then be run by simply running `bundle exec cucumber`.

##Ruby Examples

There are a few examples which do not use Cucumber which can be found in the 'vanilla_ruby_examples' directory.  These can run simply by `ruby matching_strategies.rb` using the filename which you wish to run.

Note - the examples may differ slightly from the book as sometimes it made more sense to leave debug output in the code to make things more visible when you run the examples where in the book assertions may have been used.
