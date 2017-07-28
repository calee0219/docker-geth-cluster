FROM ubuntu:16.04

MAINTAINER CALee

# install geth
RUN apt-get update
RUN apt-get -y install software-properties-common
RUN add-apt-repository -y ppa:ethereum/ethereum
RUN apt-get update
RUN apt-get -y install ethereum
RUN touch ~/passwd && chmod 700 ~/passwd

EXPOSE 30303 8545
