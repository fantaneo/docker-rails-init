FROM ruby:3.1.4
ENV APP_ROOT /work

RUN apt-get update && apt-get install -y nodejs yarn cmake libicu-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*

RUN ln -s -f /usr/share/zoneinfo/Asia/Tokyo /etc/localtime

RUN mkdir -p $APP_ROOT
WORKDIR $APP_ROOT

EXPOSE 3000

# CMD ["bundle", "exec", "rails", "server", "-b", "0.0.0.0", "-p", "3000"]
