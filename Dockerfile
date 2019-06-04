# Extend vert.x image
FROM vertx/vertx3

#                                                      
ENV VERTICLE_NAME io.vertx.sample.MyFirstRxJavaVerticle
ENV VERTICLE_FILE target/my-first-vertx-app-1.0-SNAPSHOT.jar

# Set the location of the verticles
ENV VERTICLE_HOME /usr/verticles

EXPOSE 7777

# Copy your verticle to the container                   
COPY $VERTICLE_FILE $VERTICLE_HOME/

# Launch the verticle
WORKDIR $VERTICLE_HOME
ENTRYPOINT ["sh", "-c"]
CMD ["exec vertx run $VERTICLE_NAME -cp $VERTICLE_HOME/*"]