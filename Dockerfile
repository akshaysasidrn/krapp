FROM ruby:2.5.1-alpine
RUN apk --update upgrade && apk add --no-cache build-base sqlite-dev tzdata
RUN mkdir -p /app
WORKDIR /app
COPY Gemfile .
COPY Gemfile.lock .
RUN bundle install
COPY . .
RUN bundle exec rails db:migrate
EXPOSE 3000
CMD bundle exec rails server
