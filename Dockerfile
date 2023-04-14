FROM python:3.11.3-slim

ENV POETRY_VERSION=1.3.1 \
    POETRY_HOME="/opt/poetry" \
    POETRY_NO_INTERACTION=1

RUN pip install twine \
    && pip install --no-cache-dir "poetry==$POETRY_VERSION"

WORKDIR /app
COPY ./pyproject.toml ./poetry.lock ./
RUN poetry export --without-hashes -f requirements.txt -o requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

COPY ./api ./api
COPY ./scripts ./scripts
CMD ["sh", "./scripts/run_api.sh"]