FROM nginx:latest

RUN apt-get update && apt-get upgrade -y
RUN apt-get install wget unzip -y

WORKDIR /usr/share/nginx/html
COPY default.conf /etc/nginx/sites-enabled/

ADD https://github.com/Riskihekabuzha/CapstoneCloud-225410072/raw/main/CapstoneCloud-225410072.zip .
RUN unzip CapstoneCloud_225410072.zip
RUN mv CapstoneCloud_225410072/* .

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
