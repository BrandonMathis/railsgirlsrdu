# RailsGirls Twitter

**Details**  
The RailsGirls Twitter client is a simplified twitter-esqu application mean to duplicate the very basics behind the [twitter](https://twitter.com/) social media platform. This application will meet the following set of requirements:  

* Users can create accounts
* Users can log into their accounts
* Users can post tweets
* Tweets are no longer than 256 characters
* When a user logs in he is presented with a view of all tweets made by all users
* When a users visits her own profile she see's her own tweets.
* When a user visits another user's profile she sees that user's tweets

##Basics
**Ruby**  
Ruby is the language you will be working in. It looks like this!  

```
class Person
  attr_accessor :name
  
  def greet
    puts 'Hello!'
  end
  
  def say(statement)
    puts statement
  end
end
```
How cool is that! Well, it may look a bit like gibberish to you now. Let me try to explain.

Above is code that defines a person who has a name, can say things, and greet you with a howdy "Hello!" It's not important to understand how this code works now, just familiarize yourself with what code looks like!

You should all be running the latest version of ruby 2.0 on your machine, check that you are

**Rails**  
Rails is the framework you will be using. It is written in Ruby. If you ever get the two confused just remember "Ruby is the Language, Rails in the framwork." We can have Ruby without Rails but we cannot have Rails without Ruby.

We use Rails to take care of all the heavy lifting of talking to our users via the browsers and showing them the webpages they want filled with the content they asked for. Rails is all about helping you write awesome websites in Ruby!

If you do not have rails installed on your machine, install it:


**Gems**  
To achive the desired functionality we will use a series of [gems](http://rubygems.org). Gems are packets of code that can extend the functionality of your application. We call thems gems because they are written in ruby!

> Protip: Rails is also considerd a gem but the applications you build with rails are not considered gems!

##Lets Get Started!
###Your very first Rails app
So, we received the requirements under 'Details' (above) from our client and we are ready to get started!
Our first step is to check to make sure we have the latest and greatest version of ruby!

```
ruby -v
```

you should see something like `ruby 2.0.0p0 (2013-02-24 revision 39474) [x86_64-darwin12.2.1]`

Our next step is to create a new rails application

```
rails new twitter
```

If the above command doesnt work then make sure you have rails installed on your machine by running:

```
gem install rails
```

**Voila!** You've created your first rails application!

###Start rails for the first time
Sadly, rails still need a little help from us to get started. Step into your new rails directory:

```
cd twitter
```

Inside here you can type `ls` (mac and linux) or `dir` (windows) to see a list of all the files and folders that `rails new` created. It should look something like this

```
Gemfile
README.md
app
config
db
log
test
vendor
Gemfile.lock
Rakefile
bin
config.ru
lib
public
tmp
```

From here we can startup rails running this simple command:

```
rails server
```

Your output should look something like this

```
=> Booting WEBrick
=> Rails 4.0.0 application starting in development on http://0.0.0.0:3000
=> Run `rails server -h` for more startup options
=> Ctrl-C to shutdown server
[2013-09-05 12:02:48] INFO  WEBrick 1.3.1
[2013-09-05 12:02:48] INFO  ruby 2.0.0 (2013-02-24) [x86_64-darwin12.2.1]
[2013-09-05 12:02:48] INFO  WEBrick::HTTPServer#start: pid=27949 port=3000
```

After that, type `localhost:3000` into your browser (chrome, safari). If you are using Internet Explorer stop what you are doing right now and install chrome!!!

You should see this page:  
![](http://i.imgur.com/SwKp4rB.jpg)

###User Authentication
For user authentication we are going to use a gem called [devise](http://rubygems.org/gems/devise) which will make this a snap.

First, add devise to your Gemfile

```
gem 'devise'
```
Then, go to your terminal or command prompt and type the following

```
bundle install
```

Next, we are going to follow the steps for ['Getting Started'](https://github.com/plataformatec/devise#getting-started) in the devise readme to generate some User modules, controllers, and views.

```
rails generate devise:install
rails generate devise User
```

The following code generated some models and migrations for us. In order to update our database to conencide with our new code we need to run the following.

```
rake db:migrate
```

Just like that we've added authentication to our application. Go to the url `localhost:3000/users/sign_up` to see the signup page and create a new user!

>PROTIP: Never use one of your own passwords to create a user when developing an application! Use some junk password like 'securepassword'