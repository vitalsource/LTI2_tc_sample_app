FROM ruby:2.1.4

RUN mkdir /apps
WORKDIR /apps

#install mysql-server & redis
RUN apt-get update
RUN apt-get -y install mysql-server

#Install some dependencies
#RUN git clone https://github.com/vitalsource/LTI2-Reference.git

# Copy gems and libs to tmp and then run bundle install, by doing it this way it will be
# cached until the gemfile changes and will not need to be run on every build

COPY Gemfile* /tmp/
WORKDIR /tmp
RUN bundle install -j 4

ADD ./ /apps/lti2_tc

WORKDIR /apps/lti2_tc

EXPOSE 3000

CMD ["/bin/bash", "/apps/lti2_tc/docker/run.sh"]