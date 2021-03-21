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

# Installing Xilinx tools (Vivado/Vitis/...) change cmake installation location 

It cause problem with installing/upgrading/removing cmake. To solve this, you can give `/usr/local/bin` or `/usr/bin` priority by adding them to your path after vivado paths:

    export PATH=/usr/local/bin:$PATH
    which cmake

To do it permanently:

    vim ~/.bashrc

and add this line at the end of the file:

    PATH=/usr/local/bin:$PATH

Source of solution: https://stackoverflow.com/questions/64346732/i-have-an-issue-about-cmake-version
 
