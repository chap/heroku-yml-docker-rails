FROM heroku/heroku:18
RUN apt-get install ruby2.5
Add . .
RUN bundle install
