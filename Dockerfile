FROM heroku/heroku:18
RUN gem install bundler
Add . .
RUN NOKOGIRI_USE_SYSTEM_LIBRARIES=true bundle install
