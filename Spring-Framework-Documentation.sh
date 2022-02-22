#!/bin/bash

set -euo pipefail

VERSION='6.0.0-M2' # See https://docs.spring.io/spring-framework/docs/6.0.0-M2/reference/html/index.html

PANDOC_OPTIONS='--from=html --standalone'
EXTENSION='epub'

echo -n 'Creating Spring Reference Documentation epub ... '

pandoc 'https://docs.spring.io/spring-framework/docs/6.0.0-M2/reference/html/overview.html#overview' "$PANDOC_OPTIONS" -o 00-overview."$EXTENSION"
pandoc 'https://docs.spring.io/spring-framework/docs/6.0.0-M2/reference/html/core.html#spring-core' "$PANDOC_OPTIONS" -o 01-core."$EXTENSION"
pandoc 'https://docs.spring.io/spring-framework/docs/6.0.0-M2/reference/html/testing.html#testing' "$PANDOC_OPTIONS" -o 02-testing."$EXTENSION"
pandoc 'https://docs.spring.io/spring-framework/docs/6.0.0-M2/reference/html/data-access.html#spring-data-tier' "$PANDOC_OPTIONS" -o 03-data-access."$EXTENSION"
pandoc 'https://docs.spring.io/spring-framework/docs/6.0.0-M2/reference/html/web.html#spring-web' "$PANDOC_OPTIONS" -o 04-web."$EXTENSION"
pandoc 'https://docs.spring.io/spring-framework/docs/6.0.0-M2/reference/html/web-reactive.html#spring-webflux' "$PANDOC_OPTIONS" -o 05-web-reactive."$EXTENSION"
pandoc 'https://docs.spring.io/spring-framework/docs/6.0.0-M2/reference/html/integration.html#spring-integration' "$PANDOC_OPTIONS" -o 06-integration."$EXTENSION"
pandoc 'https://docs.spring.io/spring-framework/docs/6.0.0-M2/reference/html/languages.html#languages' "$PANDOC_OPTIONS" -o 07-languages."$EXTENSION"
pandoc 'https://docs.spring.io/spring-framework/docs/6.0.0-M2/reference/html/appendix.html#appendix' "$PANDOC_OPTIONS" -o 08-appendix."$EXTENSION"

echo 'Done'
