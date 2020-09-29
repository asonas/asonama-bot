FROM ruby:2.6
ENV LANG=C.UTF-8

RUN mkdir /app
WORKDIR /app
RUN gem update bundler

COPY Gemfile /app
COPY Gemfile.lock /app
RUN bundle install -j$(nproc)

COPY . /app

CMD ["bundle", "exec", "ruboty"]
