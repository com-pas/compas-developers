FROM python:3.9.18
COPY ./mkdocs.yml /mkdocs.yml

COPY ./docs/ /docs/
# WORKDIR /docs/

RUN pip install mkdocs
EXPOSE 8080

CMD ["mkdocs", "serve"]