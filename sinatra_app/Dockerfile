FROM ruby:2.3.0-alpine

COPY . ./
RUN bundle install

CMD ["bundle", "exec", "ruby" ,"run.rb", "-o", "0.0.0.0"]
