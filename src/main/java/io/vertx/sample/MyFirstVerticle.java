package io.vertx.sample;

import io.vertx.core.AbstractVerticle;

public class MyFirstVerticle extends AbstractVerticle {

    @Override
    public void start() {
        vertx.createHttpServer()
        // The request Handler is called for each incoming // HTTP request,
        // we print the name of the thread
        .requestHandler(req -> {
        req.response().end("Hello from "+ Thread.currentThread().getName()); }).listen(7777); // start the server on port 8080
    }

}
