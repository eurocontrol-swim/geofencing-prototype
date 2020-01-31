FROM mongo

COPY ./services/db/mongo/scripts /home/mongodb/scripts

COPY ./secrets/mongo/ /home/mongodb/ssl

COPY ./services/db/mongo/mongod.conf /home/mongodb

WORKDIR /home/mongodb

RUN ["chmod", "+x", "-R", "/home/mongodb/scripts/"]

CMD ["/home/mongodb/scripts/run.sh"]
