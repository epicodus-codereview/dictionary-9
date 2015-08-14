#	Dictionary

##### _The counter weight to Urban dictionary_, _August, 2015_

Currently deployed: _https://mysterious-mesa-5410.herokuapp.com/_

#### By **Tim Kellogg**

## Description 

_Dictionary is the counter weight to urban dictionary.  It uses two classes - Definition and Word in order to generate a dictionary.  You can add new ones very easily by navigating through the site. The site is fully tested using `rspec` for unit testing and `capybara/rspec` for integration testing. It also features a multi-threaded server so it will be able to handle many users at the same time! However, it doesn't store the information to a database so once you leave - it's gone!  But,
if you ever want to repopulate the dictionary, you can run the populate dictionary script._ 

##	Setup
* Download the Repo
* `cd` into the Directory
* `puma app.rb` to start the server
* `rspec` to test both integration and libraries
* To populate the dictionary, go to the route "populate{underscore}my{underscore}dictionary"

###	Technologies Used
* Language: Ruby
* Stack: Ruby/Sinatra, Faker (building a fake database)
* Middleware: Rack
* Testing: Rspec/Capybara/launchy
* Server: Puma
* Gems: listed in Gemfile
* Front-End: Bootstrap

###	Legal
Copyright (c) 2015 **Tim Kellogg_**

This software is licensed under the MIT license.

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the 'Software'), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

