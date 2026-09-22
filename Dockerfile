FROM python:3.14-slim-trixie
LABEL org.opencontainers.image.authors="martin.rippin@helse-bergen.no"
COPY pyproject.toml /usr/src/greeter/
COPY src/ /usr/src/greeter/src/
COPY tests/ /usr/src/greeter/tests/
WORKDIR /usr/src/greeter
RUN pip install --no-cache-dir .
CMD ["greeter"]