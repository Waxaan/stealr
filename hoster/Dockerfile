FROM python:3.12-slim

WORKDIR /app
COPY src/ /app/src/
COPY pyproject.toml /app/
RUN pip install poetry
RUN poetry install

CMD ["poetry", "run", "python", "src/app/main.py"]
