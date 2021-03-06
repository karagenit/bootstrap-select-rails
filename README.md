# Bootstrap4::Select::Rails

`bootstrap-select`, fixed for Bootstrap 4 (Beta 2.1) and packaged into a Gem for Rails.

This is a fork of the original [bootstrap-select-rails](https://github.com/Slashek/bootstrap-select-rails) Gem repository. The original is based on [bootstrap-select](https://github.com/silviomoreto/bootstrap-select), but as this library isn't compatible with Bootstrap 4, I rewrote the Gem to use [a fork of the original](https://github.com/heimrichhannot/bootstrap-select) that is compatible.

## Preprequisites

You will need to install Bootstrap 4 & jQuery 3, through the `bootstrap` and `jquery-rails` gems (respectively).

## Installation

Add this line to your application's Gemfile:

    gem 'bootstrap4-select-rails'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install bootstrap4-select-rails

## Usage

In your `app/assets/stylesheets/application.scss`, add the following:

    @import "bootstrap-select";

If you intend to use features such as the live search, you must add the following to `app/assets/javascripts/application.js`:

    //= require bootstrap-select

Also, you must require at least the *alert* and *dropdown* bootstrap components. For example, if you're using [bootstrap-sass](https://github.com/twbs/bootstrap-sass):

    //= require bootstrap/alert
    //= require bootstrap/dropdown

Otherwise, requiring all of `bootstrap` or `bootstrap-sprockets` will work.

## Examples

Inside of a form:

```
<%= form.select :name, Users.all.collect { |u| [u.name, u.id] }, {}, { :class => 'selectpicker' } %>
```

Advanced options can be found [here](https://silviomoreto.github.io/bootstrap-select/options/), and are easily added to the rails forms:

```
<%= form.select :name, Users.all.collect { |u| [u.name, u.id] }, {}, { :class => 'selectpicker', :data => { :'live-search' => true } } %>
```

## Troubleshooting

The live-search feature requires some JavaScript to be executed when the page loads; however, turbolinks (enabled by default in Rails 5.1) doesn't always allow this to execute, which means your `select`s may not appear. 

To fix this, add the following to `app/assets/javascripts/live-search.js` or similar file:

```
document.addEventListener("turbolinks:load", function() {
    $('.selectpicker').selectpicker();
});
```
