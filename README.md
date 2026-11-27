# Portfolio (Rails)

Personal portfolio site: welcome, portfolio and about pages.

## Run locally

Requires Ruby 3.1 (see `.ruby-version`) and Bundler. No Node.js is needed: JavaScript is served with import maps.

```bash
bundle install
bin/rails db:prepare
bin/rails server     # http://localhost:3000
bin/rails test
```

## Notes

- **JavaScript:** importmap-rails only (`config/importmap.rb`). Webpacker and jsbundling were removed; three pipelines were installed at once, which is what broke `javascript_include_tag` earlier.
- **Health check:** `GET /up` returns 200 when the app boots.
- **Upgrade due:** Rails 7.1 and Ruby 3.1 are past end of life. Move to Ruby 3.4, then Rails 7.2, 8.0 and 8.1 in steps, running `bin/rails app:update` at each step.
