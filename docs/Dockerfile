FROM python:3.11-alpine3.19

LABEL project=multi_repo_docs

WORKDIR /docs

COPY docs/requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt
RUN apk add git bash

EXPOSE 8080

# Start development server by default
ENTRYPOINT ["mkdocs"]
CMD ["serve", "--dev-addr=0.0.0.0:8080"]
