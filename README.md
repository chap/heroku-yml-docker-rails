# Rails on heroku.yml with Docker Builds

A simple example showing how to build a Rails app using [Docker Images with heroku.yml](https://devcenter.heroku.com/articles/build-docker-images-heroku-yml)

The interesting parts:

```
# heroku.yml
build:
  docker:
    web: Dockerfile
release:
  command:
    - rails db:migrate
  image: web
run:
  web: bundle exec puma -C config/puma.rb
```


```
# Dockerfile
FROM heroku/heroku:18-build
# node runtime required for asset pipeline
RUN apt-get update -qq && apt-get install -y nodejs
RUN gem install bundler
Add . .
RUN bundle install
RUN RAILS_ENV=production bundle exec rake assets:precompile
```
