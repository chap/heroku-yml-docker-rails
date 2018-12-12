FROM heroku/heroku:18-build
# node runtime required for asset pipeline
RUN apt-get update -qq && apt-get install -y node
RUN gem install bundler
Add . .
RUN bundle install
RUN RAILS_ENV=production bundle exec rake assets:precompile
