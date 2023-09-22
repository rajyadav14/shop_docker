FROM ruby:alpine
MAINTAINER raj yadav

RUN apk add build-base ruby-nokogiri
RUN gem install rspec capybara selenium-webdriver

ENTRYPOINT [ "rspec" ]
