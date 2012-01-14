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

## Installation

Add this to your Gemfile, preferably in the `:assets` gem group:

    gem "emberjs-rails", :git => "git://github.com/stvp/emberjs-rails.git"

Done. Go forth, grasshopper.
