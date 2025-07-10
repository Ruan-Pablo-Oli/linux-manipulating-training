# linux-manipulation-training
# Treinamento interativo para comandos Linux com busca ao tesouro

#!/bin/bash
set -e  # Faz o script parar se qualquer comando der erro

echo "🔧 Criando diretórios..."
mkdir -p ../linux-training/{documents/{letters,reports},images/{personal,wallpapers},scripts,archive}
mkdir -p ../linux-training/.hidden
mkdir -p "../linux-training/complex names"
mkdir -p ../linux-training/quest/{level1,level2,level3/.deep}

echo "📝 Criando arquivos de texto..."
cat <<EOF > ../linux-training/documents/letters/letter1.txt
Querido amigo,
Espero que esteja bem.
Saudações,
EOF

cat <<EOF > ../linux-training/documents/reports/report1.txt
Relatório Anual 2024
Lucros: R$ 1.000.000,00
EOF

echo "🖼️ Criando arquivos de imagem falsos..."
touch ../linux-training/images/personal/photo1.jpg
cp ../linux-training/images/personal/photo1.jpg ../linux-training/images/wallpapers/wall1.jpg

echo "🛠️ Criando script de backup..."
cat <<EOF > ../linux-training/scripts/backup.sh
#!/bin/bash
tar czf archive/backup.tgz documents/
echo "Backup concluído!"
EOF
chmod +x ../linux-training/scripts/backup.sh

echo "🔐 Criando arquivos ocultos e especiais..."
echo "arquivo secreto" > ../linux-training/.hidden/secret.txt
echo "teste" > "../linux-training/complex names/arquivo com espaço.txt"

echo "💾 Criando arquivos grandes simulados..."
fallocate -l 5M ../linux-training/archive/bigfile1.bin
fallocate -l 10M ../linux-training/archive/bigfile2.bin

echo "🏴 Criando arquivos do desafio..."
echo "Parabéns! Você achou a primeira dica! Vá para level2." > ../linux-training/quest/level1/.hint.txt
echo "Muito bem! A próxima dica está mais oculta." > ../linux-training/quest/level2/.clue2
echo "🎉 Você achou o tesouro escondido! Código: FLAG{linux_power}" > ../linux-training/quest/level3/.deep/treasure.txt

echo "✅ Estrutura criada com sucesso!"

# Instruções sugeridas de treino
: <<'INSTRUCOES'

## 🧠 Desafios básicos:

1. Navegue pelos diretórios usando `cd` e `ls`
2. Use `cat`, `less`, ou `head` para ler arquivos
3. Copie `letter1.txt` para a pasta `reports` com outro nome
4. Use `mv` para mover `photo1.jpg` para `archive`
5. Comprime o diretório `documents/` usando `tar`
6. Use `find` para localizar arquivos com extensão `.txt`
7. Altere permissões com `chmod` e veja a diferença com `ls -l`
8. Crie um link simbólico para o arquivo `report1.txt`

## 🔍 Busca ao Tesouro:

Use comandos como `find`, `grep`, `ls -a` e navegue pela pasta `quest/`:

- Encontre a **primeira pista** no diretório `level1`
- Prossiga para `level2` e procure arquivos ocultos
- Continue até encontrar o **arquivo do tesouro** com a flag secreta `FLAG{linux_power}`

Divirta-se aprendendo Linux de forma prática e interativa! 🚀

INSTRUCOES

