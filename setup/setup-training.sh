# linux-manipulation-training
# Treinamento interativo para comandos Linux com busca ao tesouro

#!/bin/bash
set -e  # Faz o script parar se qualquer comando der erro



echo "🧹 Resetando linux-traning "
rm -rf ../linux-training/


echo "🔧 Criando diretórios..."
mkdir -p ../linux-training/{documents/{letters,reports,manuals},images/{personal,wallpapers},scripts,archive/{compressed,extracted},downloads,bin}
mkdir -p ../linux-training/.hidden
mkdir -p "../linux-training/complex names"
mkdir -p ../linux-training/quest/{level1}

# level2 e level3 serão desbloqueados com scripts

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

cat <<EOF > ../linux-training/documents/manuals/readme.md
# Manual de Boas Práticas
Este manual ensina como utilizar comandos básicos no Linux.
EOF

echo "🔃 Criando arquivos para treino de compressão..."
echo "Arquivo de exemplo 1" > ../linux-training/downloads/exemplo1.log
echo "Arquivo de exemplo 2" > ../linux-training/downloads/exemplo2.log
echo "Arquivo de exemplo 3" > ../linux-training/downloads/exemplo3.log

# Armadilhas falsas
mkdir -p ../linux-training/fake-treasure
for i in {1..5}; do
  echo "Nada aqui! Continue procurando..." > ../linux-training/fake-treasure/treasure_fake_$i.txt
  echo "FLAG{falsa_$i}" >> ../linux-training/fake-treasure/treasure_fake_$i.txt
  chmod 644 ../linux-training/fake-treasure/treasure_fake_$i.txt
  touch -d "2021-01-0$i" ../linux-training/fake-treasure/treasure_fake_$i.txt
  ln -s ../linux-training/fake-treasure/treasure_fake_$i.txt ../linux-training/.hidden/.flag_hint_$i
  echo "✔️ Armadilha falsa $i criada."
done

# Compactando arquivos reais
tar czf ../linux-training/archive/compressed/arquivos.tar.gz -C ../linux-training/downloads/ .
zip -j ../linux-training/archive/compressed/arquivos.zip ../linux-training/downloads/*.log

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

echo "🏴 Criando arquivos do desafio (nível 1)..."
mkdir -p ../linux-training/quest/level1
echo "Parabéns! Você achou a primeira dica! Para continuar, execute o script level2.sh." > ../linux-training/quest/level1/.hint.txt

cat <<EOF > ../linux-training/quest/level1/level2.sh
#!/bin/bash
mkdir -p ../level2
echo "Muito bem! A próxima dica está mais oculta. Procure por arquivos escondidos..." > ../level2/.clue2
chmod 600 ../level2/.clue2
cat <<END > ../level2/level3.sh
#!/bin/bash
mkdir -p ../level3/.deep
echo "🎉 Você achou o tesouro escondido! Código: FLAG{linux_power}" > ../level3/.deep/treasure.txt
chmod 400 ../level3/.deep/treasure.txt
echo "Level 3 desbloqueado!" && rm -- "\$0"
END
chmod +x ../level2/level3.sh
echo "Level 2 desbloqueado!" && rm -- "\$0"
EOF
chmod +x ../linux-training/quest/level1/level2.sh

echo "✅ Estrutura criada com sucesso!"

# Instruções sugeridas de treino
: <<'INSTRUCOES'

## 🧠 Desafios básicos:

1. Navegue pelos diretórios usando `cd` e `ls`
2. Use `cat`, `less`, `head`, `tail` para ler arquivos
3. Copie `letter1.txt` para `reports` com outro nome
4. Mova `photo1.jpg` para `archive`
5. Liste arquivos ocultos com `ls -a`
6. Use `find` para localizar arquivos com extensão `.log`
7. Altere permissões com `chmod` e compare usando `ls -l`
8. Crie links simbólicos para arquivos em `manuals/`
9. Comprime arquivos em `downloads/` com `tar` e `zip`
10. Extraia os arquivos compactados para `archive/extracted/`
11. Use `du -sh *` para ver o tamanho dos arquivos
12. Tente acessar `.deep/treasure.txt` antes do tempo (vai falhar!)
13. Descubra quais arquivos são armadilhas!

## 🔍 Busca ao Tesouro (CTF):

1. Vá para `quest/level1` e encontre `.hint.txt`
2. Execute `./level2.sh` para desbloquear o nível 2
3. Encontre o arquivo oculto `.clue2` em `level2`
4. Execute `./level3.sh` para desbloquear `level3`
5. Vá até `.deep/` e encontre `treasure.txt` com a FLAG

🎯 FLAG esperada:
```
FLAG{linux_power}
```

Divirta-se aprendendo Linux de forma prática e desafiadora! 🚀

INSTRUCOES

