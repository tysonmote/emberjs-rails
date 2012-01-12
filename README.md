# emberjs-rails

This gem provides Ember.js 0.9.3 to the Rails assert pipeline via `emberjs` or `emberjs-dev`. You can include them in other JS files:

```js
//= require emberjs
```

Or:

```js
//= require emberjs-dev
```

You can also include them via a regular ol' `javascript_include_tag` call:

```ruby
javascript_include_tag( "emberjs" )
```

## Precompiled templates

`emberjs-rails` also allows you to precomile Handlebars templates and make them available to Ember. Create files with a "handlebars", "hjs", or "hb" extension inside of a `templates/` directory in any `assets/javascripts/` directory:

```
app/assets/javascripts/templates/todo_item.js.handlebars
```

You can then access it like any other JavaScript asset:

```ruby
javascript_include_tag( "templates/todo_item" )
```

The above template would be stored as `Ember.TEMPLATES.todo_item`.

## Installation

Add this to your Gemfile, preferably in the `:assets` gem group:

    gem "emberjs-rails", :git => "git://github.com/stvp/emberjs-rails.git"

Done. Go forth, grasshopper.
