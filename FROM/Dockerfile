FROM almalinux:9
EXPOSE 8080
ENV DB_HOST=mysql
RUN useradd Shashi
RUN mkdir /opt/server
RUN chown expense:expense -R /opt/server
WORKDIR /opt/server 
COPY package.json .
COPY *.js .
RUN npm install
CMD ["www.google.com"]
ENTRYPOINT ["ping", "-c5"]
