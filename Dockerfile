# Usa uma versão recente do Go
FROM golang:1.24

# Define o diretório de trabalho dentro do contêiner
WORKDIR /app

# Copia apenas os arquivos de dependências primeiro (otimiza cache do Docker)
 COPY go.mod ./
# go.sum ./

# Baixa as dependências
# RUN go mod tidy

# Agora copia todo o código-fonte
COPY . .

# Compila o código
RUN go build -o server .

# Expõe a porta 80
EXPOSE 80

# Comando de execução
CMD ["./server"]
