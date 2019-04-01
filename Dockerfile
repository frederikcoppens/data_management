from ruby:2.6

RUN apt install git

RUN gem install bundler

RUN git clone https://github.com/frederikcoppens/data_management.git

RUN cd data_management && bundle install
