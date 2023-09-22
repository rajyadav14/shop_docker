FROM nginx:alpine
LABEL maintainer="RAJ YADAV"

COPY E-CommerceWebsite /website
COPY nginx.conf /etc/nginx/nginx.conf

EXPOSE 80
