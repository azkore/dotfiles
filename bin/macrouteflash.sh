sudo ifconfig en0 down
sudo ifconfig en1 down

sudo route flush

sudo ifconfig en0 up
sudo ifconfig en1 up
