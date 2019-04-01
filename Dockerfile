from ruby:2.6

RUN apt install git

RUN gem install bundler

RUN git clone https://github.com/frederikcoppens/data_management.git && cd data_management && git checkout local_version

RUN cd data_management && bundle install

COPY ./docker_start.sh start.sh
RUN chmod u+x start.sh

CMD ["/start.sh"]
