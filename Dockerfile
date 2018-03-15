FROM nginx:latest

MAINTAINER Tod Shen <tod.shen@104.com.tw>

RUN apt-get update && rm -rf /var/lib/apt/lists/*

RUN rm /usr/share/nginx/html/*
RUN echo "OK" > /usr/share/nginx/html/healthy.html
RUN echo "Hi God~" > /usr/share/nginx/html/index.html
WORKDIR /usr/share/nginx/html

CMD ["nginx", "-g", "daemon off;"]
