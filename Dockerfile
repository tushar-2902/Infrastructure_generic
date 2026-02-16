# Stage 1: Node image use karke application build kar rahe hain
FROM node AS builder

# Container ke andar working directory set kar rahe hain
WORKDIR /app

# Current project files container me copy kar rahe hain
COPY . .

# Dependencies install kar rahe hain
RUN npm install

# Application build (React/Node build output generate karega)
RUN npm run build


# Stage 2: Nginx image use karke static files serve karenge
FROM nginx 

# Default nginx html directory clean kar rahe hain
RUN rm -rf /var/www/html/*

# Build stage se generated files nginx ke web root me copy kar rahe hain
COPY --from=builder /app/build/. /usr/share/nginx/html/

# Container port 80 expose kar rahe hain (nginx default port)
EXPOSE 80

# Nginx ko foreground mode me start kar rahe hain
CMD ["nginx" , "-g" , "daemon off;"]
