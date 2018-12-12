FROM heroku/heroku:18
# required for nokigiri native extensions
RUN apt-get update -qq && apt-get install -y build-essential patch ruby-dev zlib1g-dev liblzma-dev
RUN gem install bundler
Add . .
RUN bundle install
