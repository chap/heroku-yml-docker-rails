FROM heroku/heroku:18
RUN apt-get update && apt-get install ruby-dev ruby2.5 ruby2.5-dev
RUN gem install bundler
Add . .
RUN bundle install
