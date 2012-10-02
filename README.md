#  F I R S T   U S E
---   The First Gem in your RubyMotion project
                            by Thom Parkin (c) 2012 Websembly, LLC

In many iOS applications it is desirable to present the user with an introduction or instructional screen ONLY WHEN THE APP IS RUN FOR THE FIRST TIME.
  
This utility makes it simple to track and determine;
   * if this is the very first time the application has been run on this device
   * Exactly how many times the application has run on this device
   * The date of the very first time the application ran on this device
   * The date of the last (most recent) run of the application
* * *

###  USAGE:
  With the single class file (first_use.rb) loaded, you can add a line like this in your main controller - viewDidLoad:
  
    usage = FirstUse.new "Cool App 15"
    if (usage.first_run?)
      displayInstructions
    end


 Although the AppName parameter is optional in the 'new' method it is __HIGHLY RECOMMENDED__.  This creates a namespace for your application.
  
 Public methods you can call are:
  * .first_run? - Returns a boolean (true if this is the first run)
  * .runs       - Number of times this application has run
  * .last_used  - The LAST USED DATE in several formats (as a hash)
  * .reset      - Reset the count of all statistic data

* * *

This is my first utiltiy for the RubyMotion community.  It was originally intended to be a Gem.
But, since the entire functionality is included in a single class (file), perhaps that would be over-engineering.

If you feel compelled to convert this into a Gem, I would gladly accept your pull request.