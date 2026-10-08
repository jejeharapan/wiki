FROM squidfunk/mkdocs-material:latest

WORKDIR /docs

# Copy requirements and install additional plugins
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy configuration, markdown articles, and theme overrides
COPY mkdocs.yml .
COPY article ./article
COPY overrides ./overrides

EXPOSE 80

ENTRYPOINT ["mkdocs"]
CMD ["serve", "--dev-addr", "0.0.0.0:80"]
