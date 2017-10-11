FROM ruby:2.3

RUN apt-get update -yqq \
  && apt-get install -yqq --no-install-recommends \
    nodejs imagemagick net-tools\
    && rm -rf /var/lib/apt/lists

WORKDIR /usr/src
RUN git clone https://github.com/loupnunux/rails-SchoolSlider.git app

WORKDIR /usr/src/app
RUN bundle install

COPY start.sh .

EXPOSE 3000
CMD ./start.sh

