#!/bin/bash
mkdir -p ../level2
echo "Muito bem! A próxima dica está mais oculta. Procure por arquivos escondidos..." > ../level2/.clue2
chmod 600 ../level2/.clue2
cat <<END > ../level2/level3.sh
#!/bin/bash
mkdir -p ../level3/.deep
echo "🎉 Você achou o tesouro escondido! Código: FLAG{linux_power}" > ../level3/.deep/treasure.txt
chmod 400 ../level3/.deep/treasure.txt
echo "Level 3 desbloqueado!" && rm -- "$0"
END
chmod +x ../level2/level3.sh
echo "Level 2 desbloqueado!" && rm -- "$0"
