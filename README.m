# Screen
  
  
  screen            ---> to creat 
  screan ~r <name>  ---> to reconnect
  screan ~rls       ---> to list the screens
  
  cntr + AD         ---> temp close
  cntr + AK         ---> kill
  
  cntr + AN         ---> next screen
  cntr + AS         ---> splite
  
  
# Vim

  u           ---> undo
  cntr + r    ---> redo
  
# If you want to know who is running a command with root access:
1- find the PID with htop
2- use ps aux to find out the screen/shell which is assigned to the command
3- use who to see who is the owner of the screen/shell


# Dell Fan controller
https://www.cyberciti.biz/faq/controlling-dell-fan-speeds-temperature-on-ubuntu-debian-linux/

Automatic:
  /etc/init.d/i8kmon start
Manual:
   i8kctl fan 2 2 
 
0 : turn the fan off (not recommended)
1 : set low speed
2 : set high speed
- : don’t change the state of this fan
