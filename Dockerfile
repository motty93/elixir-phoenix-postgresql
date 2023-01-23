FROM elixir:1.14.2-slim

RUN apt-get update -qq && \
  apt-get install -y inotify-tools && \
  rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY mix.* ./

RUN mix local.hex --force && \
  mix local.rebar --force
