

# 🐧 Linux Manipulation Training



This project provides an interactive environment for practicing basic Linux commands in a practical and fun way, with a CTF (Capture the Flag)-style mission. At the end, you'll find a "treasure" hidden in the file system.

------

## 📁 Project structure
```
	linux-training/  
	├── .hidden/ 
	│   └── secret.txt 
	├── archive/ 
	│   ├── bigfile1.bin 
	│   ├── bigfile2.bin 
	│   └── compressed/ 
	│       ├── arquivos.tar.gz 
	│       └── arquivos.zip 
	├── bin/ 
	├── complex names/ 
	│   └── arquivo com espaço.txt 
	├── documents/ 
	│   ├── letters/ 
	│   │   └── letter1.txt 
	│   ├── manuals/ 
	│   │   └── readme.md 
	│   └── reports/ 
	│       └── report1.txt 
	├── downloads/ 
	│   ├── exemplo1.log 
	│   ├── exemplo2.log 
	│   └── exemplo3.log 
	├── images/ 
	│   ├── personal/ 
	│   │   └── photo1.jpg 
	│   └── wallpapers/ 
	│       └── wall1.jpg 
	├── quest/ 
	│   └── level1/ 
	│       ├── .hint.txt 
	│       └── level2.sh* 
	├── scripts/ 
	│   └── backup.sh* 
```

-> The structure is already assembled, but if you want to reset everything to the initial state, just run the setup.sh script again!!!

---

## 🚀 How start

1. Clone the repository:

   ```bash
        git clone https://github.com/seu-usuario/linux-manipulation-training.git
        cd linux-manipulation-training/setup
   ```
2. Make the script executable and run it using bash   
   ```bash
	chmod +x setup.sh
	bash ./setup.sh
   ```

## 📚 What will you train

Fundamental Linux Commands:

| Command    | Brief Description                                  |
|------------|---------------------------------------------------|
| `ls`       | List files and directories                         |
| `cd`       | Change directory                                  |
| `pwd`      | Show current directory                            |
| `rm`       | Remove files and directories                      |
| `cat`      | Display the contents of files                     |
| `less`     | View files with pagination                        |
| `head`     | Show the first lines of a file                    |
| `tail`     | Show the last lines of a file                     |
| `echo`     | Print text or variables to the terminal           |
| `cp`       | Copy files or directories                         |
| `mv`       | Move or rename files or directories               |
| `find`     | Search for files and directories with criteria    |
| `grep`     | Search text/patterns inside files                  |
| `chmod`    | Change permissions of files and directories        |
| `tar`      | Archive and compress files and directories         |
| `ln -s`    | Create symbolic links (shortcuts) to files         |
| `fallocate`| Quickly create files of fixed size                  |

## 🧠 Basic Challenges:

1. Navigate through directories using `cd` and `ls`
2. Use `cat`, `less`, `head`, `tail` to read files
3. Copy `letter1.txt` to `reports` with a new name
4. Move `photo1.jpg` to `archive`
5. List hidden files with `ls -a`
6. Use `find` to locate files with `.log` extension
7. Change permissions with `chmod` and compare using `ls -l`
8. Create symbolic links to files in `manuals/`
9. Compress files in `downloads/` using `tar` and `zip`
10. Extract the compressed files to `archive/extracted/`
11. Use `du -sh *` to see file sizes
12. Try accessing `.deep/treasure.txt` early (it will fail!)
13. Discover which files are traps!

## 🔍 Treasure Hunt (CTF):

1. Go to `quest/level1` and find `.hint.txt`
2. Run `./level2.sh` to unlock level 2
3. Find the hidden file `.clue2` in `level2`
4. Run `./level3.sh` to unlock level 3
5. Go to `.deep/` and find `treasure.txt` with the FLAG


