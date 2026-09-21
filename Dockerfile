FROM alpine:3.19

RUN apk add --no-cache zsh bash shellcheck git

WORKDIR /app
COPY . /app

RUN chmod +x tests/run_tests.sh

CMD ["zsh", "tests/run_tests.sh"]
