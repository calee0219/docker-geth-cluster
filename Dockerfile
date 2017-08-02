FROM ubuntu:16.04

MAINTAINER CALee

COPY ./genesis.json /root/genesis.json

RUN apt-get update
# install geth
RUN apt-get -y install software-properties-common
RUN add-apt-repository -y ppa:ethereum/ethereum
RUN apt-get update
RUN apt-get -y install ethereum
RUN geth --networkid 110010 --rpc init /root/genesis.json
# download ethstats
RUN apt-get -y install git
RUN apt-get -y install nodejs npm
RUN git clone https://github.com/cubedro/eth-netstats /root/eth-netstats
RUN npm install -g grunt-cli
RUN git clone https://github.com/cubedro/eth-net-intelligence-api.git /root/eth-net-intelligence-api
RUN npm install pm2 -g


EXPOSE 30303 8545
