# Runnign something and closing ssh
```
  nohup long-running-process &
  exit
```
# Screen
  
### Using method  
```
ssh me@myserver.com
screen               #start a screen session
run-a-long-process
CTRL+a , d to detatch from your screen session
exit                 #disconnect from the server, while run-a-long-process continues
```
When you come back to your laptop:
```
ssh me@myserver.com
screen -r            #resume the screen session
```

```
  screen            ---> to creat 
  screan -r <name>  ---> to reconnect
  screan -ls        ---> to list the screens
  
  cntr + AD         ---> temp close
  cntr + AK         ---> kill (or write exit inside the opened screen)
  
  cntr + AN         ---> next screen
  cntr + AS         ---> splite
  ```
  
# Vim
```
  u           ---> undo
  cntr + r    ---> redo
```
# Who is running a command with root access:
1- find the PID with htop
2- use ps aux to find out the screen/shell which is assigned to the command
3- use who to see who is the owner of the screen/shell


# Dell Fan controller
https://www.cyberciti.biz/faq/controlling-dell-fan-speeds-temperature-on-ubuntu-debian-linux/

Automatic:
  /etc/init.d/i8kmon start
Manual:
```
   i8kctl fan 2 2 
```

``` 
0 : turn the fan off (not recommended)
1 : set low speed
2 : set high speed
- : don’t change the state of this fan
```
working script:
https://askubuntu.com/questions/419199/which-software-controls-the-fan-on-dell-sputnik


# PDF to JPG
source: https://www.linuxuprising.com/2019/03/how-to-convert-pdf-to-image-png-jpeg.html
Tool: pdftoppm
Command:
```
pdftoppm -png document.pdf document
```
to convert an entire PDF (document.pdf) to PNG, and name each page of the PDF converted to PNG as document-01.png, document-02.png and so on:
for jpg use -jpeg
example:
```
pdftoppm -jpeg passport_new.pdf passport_new_jpg
```


# resize jpg
```
convert -resize 50% pic.jpg  pic_%50.jpg
```

# ArXiv

    1- Download the overleaf folder
    2- download .bbl file from intermediary files
    3- rename it to main .tex file


# Vivado 
To see the part names:
```
cat  /opt/Xilinx/Vivado/2019.2/data/parts/xilinx/virtexuplus/public/bsdl/FileMap.txt
```

# Tuna (license)
```
sudo /opt/licence/lnx64.o/lmgrd -c /opt/licence/lics/xilinx.lic -l /opt/licence/logs/xilinx.log
sudo /opt/licence/lnx64.o/lmgrd -c /opt/licence/lics/cadence.lic -l /opt/licence/logs/cadence.log
sudo /opt/licence/lnx64.o/lmgrd -c /opt/licence/lics/intel.lic -l /opt/licence/logs/intel.log 
```

# Yosys

to set the parameters during synthesis (check in USYD PC   /workspace/rccm_train/HDL/yosys_test/lsfr_130.ys):

```
# read design
read -sv  ../LFSR/verilog/LFSR.v 
chparam -set NUM_BITS 10 LFSR
hierarchy -top LFSR
```


# Wechat on ubuntu

1- install rambox
```
sudo snap install rambox
```
2- run the rambox from the menu
3- search and install weechat
4- scann the code --> Does Not work for my account :))

# Skype
```
sudo snap install skype --classic
```

# Merge PDF files by linux command
```
qpdf --empty --pages *.pdf -- out.pdf
```

# to isntall vtr:
If you have any problem with cmake version: check this: "Installing Xilinx tools (Vivado/Vitis/...) change cmake installation location" as the following title

Also, don't forget to isntall these libraries before vtr installation:

    sudo apt install libtbb-dev
    sudo apt install libeigen3-dev
    sudo apt install libgtk-3-dev libx11-dev


### Installing Xilinx tools (Vivado/Vitis/...) change cmake installation location 

It cause problem with installing/upgrading/removing cmake. To solve this, you can give `/usr/local/bin` or `/usr/bin` priority by adding them to your path after vivado paths:

    export PATH=/usr/local/bin:$PATH
    which cmake

To do it permanently:

    vim ~/.bashrc

and add this line at the end of the file:

    PATH=/usr/local/bin:$PATH

Source of solution: https://stackoverflow.com/questions/64346732/i-have-an-issue-about-cmake-version

### Github readme.md file Cheat sheet

    https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet
### Pup a notification on Phone whenthe code is finished
follow this website: https://betterprogramming.pub/how-to-send-push-notifications-to-your-phone-from-any-script-6b70e34748f6 . At the end you need a command to be added to your script. you can find it from the android app in your user id and user link section.    
      
<!--    curl -s -o /dev/null POST https://maker.ifttt.com/trigger/MLBlock_notify/with/key/gsIw7J54gk9BLXgAtqYeF0Si3PDcr8KXaWux1tdFUF9?value1=TheCodeIsDone  -->

### Download a link

    curl -O link
    
### Undo a commit if it is not pushed to github yet
    
    git reset HEAD~1 --soft

### Zip a folder

    zip -r filename.zip folder
   
