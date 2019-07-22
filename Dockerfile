FROM node:12-slim
ARG VERSION
RUN echo "Using version ${VERSION}"
ENV version=${VERSION}
COPY app.js /app.js

EXPOSE 8080
CMD [ "node", "/app.js" ]