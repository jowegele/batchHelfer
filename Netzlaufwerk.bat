echo off

::
echo Laufwerksverbindungen
echo fuer Zuhause/Büro
::

net use G: /delete
net use H: /delete

net use G: \\192.168.0.4
net use H: \\Maxs-iMac\dev

exit
