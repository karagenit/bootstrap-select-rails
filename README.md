# Bootstrap::Select::Rails

`bootstrap-select`, fixed for Bootstrap 4 (Alpha 6) and packaged into a Gem for Rails.

This is a fork of the original [bootstrap-select-rails](https://github.com/Slashek/bootstrap-select-rails) Gem repository. The original is based on [bootstrap-select](https://github.com/silviomoreto/bootstrap-select), but as this library isn't compatible with Bootstrap 4, I rewrote the Gem to use [a fork of the original](https://github.com/heimrichhannot/bootstrap-select) that is compatible.

## Preprequisites

You will need to install Bootstrap 4 & jQuery 3, through the `bootstrap` and `jquery-rails` gems (respectively).

## Installation

Add this line to your application's Gemfile:

    gem 'bootstrap-select-4-rails'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install bootstrap-select-4-rails

## Usage

In your `app/assets/stylesheets/application.scss`, add the following:

    @import "bootstrap-select";

If you intend to use features such as the live search, you must add the following to `app/assets/javascripts/application.js`:

    //= require bootstrap-select

Also, you must require at least the *alert* and *dropdown* bootstrap components. For example, if you're using [bootstrap-sass](https://github.com/twbs/bootstrap-sass):

    //= require bootstrap/alert
    //= require bootstrap/dropdown

Otherwise, requiring all of `bootstrap` or `bootstrap-sprockets` will work.
