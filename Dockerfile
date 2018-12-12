FROM heroku/heroku:18
# required for nokigiri gem
RUN apt-get update -qq && apt-get install -y patch ruby-dev zlib1g-dev liblzma-dev
# required for pg gem
RUN apt-get install -y libpq-dev postgresql
RUN gem install bundler
Add . .
RUN bundle install
