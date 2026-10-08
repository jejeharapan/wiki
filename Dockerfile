# Stage 1: Build MkDocs static site using pre-packaged squidfunk/mkdocs-material
FROM squidfunk/mkdocs-material:latest AS builder

WORKDIR /docs

# Copy requirements and install additional plugins (e.g. awesome-pages)
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy configuration and content
COPY mkdocs.yml .
COPY article ./article
COPY overrides ./overrides

# Build static HTML site
RUN mkdocs build -f mkdocs.yml -d /app/site

# Stage 2: Serve static content via Nginx
FROM nginx:alpine

# Copy custom nginx configuration
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Copy built site from builder stage
COPY --from=builder /app/site /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]

