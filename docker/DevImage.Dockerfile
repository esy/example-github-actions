FROM esydev/esy:nightly-alpine-latest

COPY package.json package.json
COPY esy.lock esy.lock
RUN esy i
RUN esy build-dependencies
COPY hello.ml hello.ml
RUN esy

ENTRYPOINT ["/entrypoint.sh"]
