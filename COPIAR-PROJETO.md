# Como Copiar o Projeto para MDR TECH

O projeto `sistema-gestao-vendas` está localizado em:
```
/Users/guilhermemedeiros/sistema-gestao-vendas
```

## Opção 1: Usar o Script Automático

Execute o script que foi criado:
```bash
cd "/Users/guilhermemedeiros/MDR TECH"
chmod +x copiar-projeto.sh
./copiar-projeto.sh
```

## Opção 2: Copiar Manualmente

Execute os seguintes comandos no terminal:

```bash
# Navegar para a pasta home
cd /Users/guilhermemedeiros

# Copiar o projeto completo
cp -R sistema-gestao-vendas "MDR TECH/sistema-gestao-vendas"

# Ou usar ditto (macOS)
ditto sistema-gestao-vendas "MDR TECH/sistema-gestao-vendas"
```

## Opção 3: Usar Python

```bash
cd /Users/guilhermemedeiros
python3 << EOF
import shutil
import os
src = 'sistema-gestao-vendas'
dst = 'MDR TECH/sistema-gestao-vendas'
if os.path.exists(dst):
    shutil.rmtree(dst)
shutil.copytree(src, dst)
print('✅ Projeto copiado com sucesso!')
EOF
```

## Após Copiar

1. Navegue até a pasta:
```bash
cd "/Users/guilhermemedeiros/MDR TECH/sistema-gestao-vendas"
```

2. Instale as dependências:
```bash
npm install
```

3. Inicie o servidor:
```bash
npm run dev
```

## Verificar se Funcionou

Verifique se a pasta `src` existe:
```bash
ls -la "/Users/guilhermemedeiros/MDR TECH/sistema-gestao-vendas/src"
```

Se a pasta `src` existir com todos os arquivos, o projeto foi copiado com sucesso!

