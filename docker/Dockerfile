FROM ruby:2.7.2-alpine3.13 AS builder
RUN apk add --no-cache --update \
  build-base \
  sqlite-dev \
  tzdata
RUN mkdir /app
WORKDIR /app
COPY Gemfile Gemfile.lock /app/
RUN bundle install

FROM ruby:2.7.2-alpine3.13 
RUN mkdir /app
WORKDIR /app
COPY --from=builder /usr/local/bundle/ /usr/local/bundle/
COPY --from=builder /usr/lib/ /usr/lib/
COPY --from=builder /usr/share/ /usr/share/
COPY --from=builder /app/ /app/
COPY . /app 

