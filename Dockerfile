# FROM ruby:2.4.2-alpine
FROM ruby:2.4.2
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs postgresql
Add . .
RUN bundle install
CMD rails server -b 0.0.0.0 -p $PORT
