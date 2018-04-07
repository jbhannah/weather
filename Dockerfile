FROM ruby:2.5-alpine

ENV RAILS_ENV=production
WORKDIR /app

RUN apk add --update --no-cache \
  build-base \
  git \
  less \
  libxml2-dev \
  libxslt-dev \
  nodejs-current \
  postgresql-dev \
  tzdata \
  yarn && \
  bundle config build.nokogiri --use-system-libraries

COPY Gemfile Gemfile.lock ./
ARG BUNDLE_WITH=production
RUN bundle install --with=$BUNDLE_WITH

COPY package.json yarn.lock ./
ARG YARN_PRODUCTION=true
RUN yarn --production=$YARN_PRODUCTION

COPY . ./

CMD ["bin/rails", "s", "-b", "0.0.0.0"]
