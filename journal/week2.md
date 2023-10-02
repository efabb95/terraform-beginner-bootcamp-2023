# Terraform Beginner Bootcamp 2023 - Week 2

## Sinatra

Sinatra is a DSL for quickly creating web applications in Ruby with minimal effort:
```ruby
# myapp.rb
require 'sinatra'

get '/' do
  'Hello world!'
end
```
Install the gem:
```ruby
gem install sinatra
gem install puma # or any other server
```
And run with:
```ruby
ruby myapp.rb
```
[Sinatra Docs](https://sinatrarb.com/intro.html)


