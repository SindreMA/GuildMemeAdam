FROM nginx:alpine

COPY Index.html /usr/share/nginx/html/index.html
COPY gif.gif /usr/share/nginx/html/gif.gif

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
