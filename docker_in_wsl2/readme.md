# Docker in WSL2

Docker kann in der WSL genauso installiert werden wie für Linux:

https://docs.docker.com/engine/install/ubuntu/

Jedoch hat die WSL2 kein funktionierendes systemd zum Starten des Docker Daemon. Deshalb kann man diesen mit folgendem Trick starten:

```
sudo visudo
```

Hier die Zeile welche mit %sudo beginnt wie folgt ab ändern:

```
%sudo ALL=(ALL:ALL) NOPASSWD:ALL
```

Als nächstes soll die .bashrc oder .zshrc abgeändert werden, jenachdem welche Shell man verwendet. Füge folgendes hinzu:

```
# Start Docker daemon automatically when logging in if not running.
RUNNING=`ps aux | grep dockerd | grep -v grep`
if [ -z "$RUNNING" ]; then
    sudo dockerd > /dev/null 2>&1 &
    disown
fi
```