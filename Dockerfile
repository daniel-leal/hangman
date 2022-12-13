FROM elixir:1.14.2

# instalando o gerenciar de pacotes do elixir
RUN mix local.hex --force && \
  mix local.rebar --force

# também funciona essa sintaxe:
# RUN mix do local.hex --force, local.rebar --force

# copiar tudo da raiz do projeto para o contêiner docker
COPY . .

# instalar as dependencias
RUN mix do deps.get, deps.compile

# executar o servidor
CMD ["mix", "phx.server"]
# Appended by flyctl
ENV ECTO_IPV6 true
ENV ERL_AFLAGS "-proto_dist inet6_tcp"
