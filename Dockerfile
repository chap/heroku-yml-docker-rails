FROM heroku/heroku:18
RUN gem install bundler
Add . .
RUN bundle install
