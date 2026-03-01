#!/bin/bash
# Busca por hashes e criptgrafia em arquivo tabela.txt
# Autor: Smith Braz - 5M1TH
# Data: 01-03-2026
# Use com responsabilidade e ética

# Arquivo de entrada
ARQUIVO="tabela.txt"

# Verifica se o arquivo existe
if [ ! -f "$ARQUIVO" ]; then
    echo "Arquivo $ARQUIVO não encontrado!"
    exit 1
fi

# Pede o tipo de criptografia
echo "Digite o tipo de hash (MD5, SHA1, SHA256, SHA384, SHA512):"
read tipo

# Normaliza para maiúsculas
tipo=$(echo "$tipo" | tr '[:lower:]' '[:upper:]')

# Pede o hash
echo "Digite o hash:"
read hash

# Procura no arquivo
resultado=$(grep -i "^$tipo[[:space:]]\+$hash" "$ARQUIVO")

if [ -n "$resultado" ]; then
    # Extrai apenas a senha (última coluna)
    senha=$(echo "$resultado" | awk '{print $3}')
    echo "Senha encontrada: $senha"
else
    echo "Hash não consta no banco de dados."
fi
