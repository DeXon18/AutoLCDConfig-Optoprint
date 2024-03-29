#!/bin/bash

# Actualizar Raspbian
sudo apt update
sudo apt upgrade -y

# Solucionar problemas de paquetes incorrectos
sudo apt install -f -y

# Descargar los controladores de la pantalla Waveshare LCD
git clone https://github.com/waveshare/LCD-show.git

# Cambiar los permisos del directorio
chmod -R 755 LCD-show

# Cambiar al directorio
cd LCD-show/

# Cambiar los permisos del archivo
chmod +x LCD5-show

# Ejecutar el script correspondiente a tu pantalla (por ejemplo, para una pantalla de 3.5")
sudo ./LCD5-show

# Si deseas invertir la pantalla, ejecuta:
sudo ./LCD5-show 180

# Actualizar el archivo de configuración de arranque (boot/config.txt)
sudo bash -c 'cat << EOF >> /boot/config.txt

# Descomenta y agrega el código siguiente:
hdmi_group=2
hdmi_mode=87
hdmi_cvt 800 480 60 6 0 0 0
hdmi_drive=1
display_rotate=2
dtoverlay=ads7846,cs=1,penirq=25,penirq_pull=2,speed=50000,keep_vref_on=0,swapxy=0,pmax=255,xohms=150,xmin=200,xmax=3900,ymin=200,ymax=3900
EOF'

# Reiniciar la Raspberry Pi
sudo reboot
