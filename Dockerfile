FROM debian:jessie
WORKDIR /home/
COPY ./ /home/
RUN dpkg -i /home/tidy-5.4.0-64bit.deb
RUN apt-get install -f
ENTRYPOINT [ "tidy" ]
