FROM heroku/heroku:18
RUN apt-get update -qq && apt-get install -y ruby-dev ruby2.5 ruby2.5-dev build-essential
RUN gem install bundler
Add . .
RUN bundle install
