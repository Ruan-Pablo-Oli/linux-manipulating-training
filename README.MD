

# 🐧 Linux Manipulation Training

Este projeto fornece um ambiente interativo para treinar comandos básicos do Linux de forma prática e divertida, com uma missão estilo CTF (Capture The Flag). Ao final, você encontrará um “tesouro” escondido no sistema de arquivos.

---

## 📁 Estrutura do projeto

├── setup/  
│ └── setup.sh # Script que gera o ambiente de treino
<br>
└── linux-training/ # Diretório criado, onde você pratica os comandos

-> A estruta já vem montada, mas caso queria resetar tudo para o estado inicial basta rodar o script setup.sh novamente!!!

---

## 🚀 Como começar

1. Clone o repositório:

   ```bash
        git clone https://github.com/seu-usuario/linux-manipulation-training.git
        cd linux-manipulation-training/setup
   ```
2. Torne os script executável e o execute usando o bash
   ```bash
	chmod +x setup.sh
	bash ./setup.sh
   ```

📚 O que você vai treinar

Comandos fundamentais do Linux:

 | Comandos       | Descrição            |
|----------------|----------------------|
| `ls`           | Listar arquivos      |
| `cd`           | Mudar diretório      |
| `pwd`          | Mostrar diretório atual |
| `rm`          | Deletar diretórios e arquivos |
| `cat`      | Exibe o conteúdo de arquivos                         |
| `less`     | Visualiza arquivos paginando a saída                 |
| `head`     | Mostra as primeiras linhas de um arquivo             |
| `tail`     | Mostra as últimas linhas de um arquivo               |
| `echo`     | Imprime texto ou variáveis no terminal                |
| `cp`       | Copia arquivos ou diretórios                           |
| `mv`       | Move ou renomeia arquivos ou diretórios               |
| `find`     | Busca arquivos e diretórios com critérios variados    |
| `grep`     | Procura por texto/padrões dentro de arquivos          |
| `chmod`    | Altera permissões de arquivos e diretórios            |
| `tar`      | Arquiva e compacta arquivos e diretórios               |
| `ln -s`    | Cria links simbólicos (atalhos) para arquivos         |
| `fallocate`| Cria arquivos de tamanho fixo rapidamente              |

