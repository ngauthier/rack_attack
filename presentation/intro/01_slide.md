!SLIDE 
# Rack Attack
## @ngauthier
### [http://github.com/ngauthier/rack_attack](http://github.com/ngauthier/rack_attack)

!SLIDE
# wtf

!SLIDE center
# Rails + OO =
![LOL](lol.png)

!SLIDE
# ActionView => LOL
# ActionController => LOL
# ActiveRecord => meh

!SLIDE
# Exploring minimal OO web applications

!SLIDE
# Can I do MVC right?
### Like with views and templates


!SLIDE bullets
# Gemfile
    @@@ ruby
    source :rubygems
    gem 'rake'
    gem 'rack'

    group :test do
      gem 'json'
      gem 'capybara-webkit'
      gem 'minitest'
    end
