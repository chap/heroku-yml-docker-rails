FROM heroku/heroku:18
RUN apt-get install ruby2.5
RUN gem install bundler
Add . .
RUN bundle install
