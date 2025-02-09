FROM python:3
RUN pip install --upgrade pip
RUN pip install mkdocs mkdocs-material mkdocs-minify-plugin
EXPOSE 8000
WORKDIR /
COPY docs ./docs
COPY overrides ./overrides
COPY mkdocs.yml .
ENTRYPOINT ["mkdocs"]
CMD ["serve", "-a", "127.0.0.1:8000"]
