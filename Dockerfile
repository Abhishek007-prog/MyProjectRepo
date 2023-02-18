FROM nginx:latest
USER root
COPY index.html .

WORKDIR /app

EXPOSE 80

CMD ["nginx"]