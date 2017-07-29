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

EXPOSE 30303 8545 22
