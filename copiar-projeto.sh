#!/bin/bash

# Script para copiar o projeto sistema-gestao-vendas para MDR TECH

ORIGEM="/Users/guilhermemedeiros/sistema-gestao-vendas"
DESTINO="/Users/guilhermemedeiros/MDR TECH/sistema-gestao-vendas"

echo "🔄 Copiando projeto de $ORIGEM para $DESTINO..."

# Remove o destino se já existir (exceto node_modules se houver)
if [ -d "$DESTINO" ]; then
    echo "⚠️  Pasta destino já existe. Removendo..."
    rm -rf "$DESTINO"
fi

# Copia tudo
cp -R "$ORIGEM" "$DESTINO"

# Remove node_modules se existir (para economizar espaço)
if [ -d "$DESTINO/node_modules" ]; then
    echo "🗑️  Removendo node_modules..."
    rm -rf "$DESTINO/node_modules"
fi

echo "✅ Projeto copiado com sucesso!"
echo "📁 Localização: $DESTINO"
echo ""
echo "Para instalar as dependências, execute:"
echo "  cd \"$DESTINO\""
echo "  npm install"

