FROM heroku/heroku:18-build
# yarn required for asset pipeline
RUN apt-get update -qq && apt-get install -y yarn
RUN gem install bundler
Add . .
RUN bundle install
RUN RAILS_ENV=production bundle exec rake assets:precompile
