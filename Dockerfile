FROM heroku/heroku:18
RUN apt-get update -qq && apt-get install -y ruby2.5-dev
RUN gem install bundler
Add . .
RUN bundle install
