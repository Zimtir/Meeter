# MacOS

## by https://hexdocs.pm/phoenix/installation.html

#### Install Elixir

```shell
brew install elixir
```

#### Install Hex

```shell
mix local.hex
```

#### Install Phoenix

```shell
mix archive.install hex phx_new
```

#### Install Node.js

https://nodejs.org/ru/download/package-manager/

#### Install PostgreSQL

https://wiki.postgresql.org/wiki/Detailed_installation_guides

#### Create Phoenix app

```shell
# like npm init
mix phx.new meeter
mv meeter Sources
cd Sources

# like npm install
mix deps.get

# like npm run build
mix deps.compile
```

#### Start to investigate a minimal HTTP2 server
