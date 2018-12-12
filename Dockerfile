FROM heroku/heroku:18-build
RUN gem install bundler
Add . .
RUN bundle install
