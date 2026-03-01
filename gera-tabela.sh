#!/bin/bash
# Gerar tabela de hashes e senhas a partir de uma lista de senhas
# Autor: Smith Braz - 5M1TH
# Data: 01-03-2026
# Use com responsabilidade e ética

# Verifica se o usuário passou um argumento
if [ $# -eq 0 ]; then
    echo "Uso: $0 arquivo.txt"
    exit 1
fi

# Arquivo de entrada
ARQUIVO=$1

# Arquivo de saída
SAIDA="tabela.txt"

# Limpa o arquivo de saída antes de começar
> "$SAIDA"

# Lê linha por linha do arquivo
while IFS= read -r palavra; do
    # Remove espaços extras
    palavra=$(echo -n "$palavra" | xargs)
    
    # Ignora linhas vazias
    if [ -n "$palavra" ]; then
        # Gera os hashes
        md5=$(echo -n "$palavra" | md5sum | awk '{print $1}')
        sha1=$(echo -n "$palavra" | sha1sum | awk '{print $1}')
        sha256=$(echo -n "$palavra" | sha256sum | awk '{print $1}')
        sha384=$(echo -n "$palavra" | sha384sum | awk '{print $1}')
        sha512=$(echo -n "$palavra" | sha512sum | awk '{print $1}')
        
        # Adiciona ao arquivo de saída com o tipo do hash
        echo "MD5    $md5 $palavra" >> "$SAIDA"
        echo "SHA1   $sha1 $palavra" >> "$SAIDA"
        echo "SHA256 $sha256 $palavra" >> "$SAIDA"
        echo "SHA384 $sha384 $palavra" >> "$SAIDA"
        echo "SHA512 $sha512 $palavra" >> "$SAIDA"
        echo "" >> "$SAIDA"  # linha em branco para separar cada palavra
    fi
done < "$ARQUIVO"

echo "Tabela gerada em $SAIDA"
