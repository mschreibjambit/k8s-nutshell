# Lokaler K3D

Die Configdateien sind so angepasst, dass sie einen temporären Mirror verwenden. Diese Dateien sind entsprechend modifiziert:

* k3d-develop-config-multinode.yaml
* k3d-develop-config.yaml
* local-k8s.sh

Damit später dieses Beispiel weiterhin funktioniert, auch wenn der Mirror entfernt wurde, muss folgendes gemacht werden:

* entferne folgende Zeilen aus `local-k8s.sh`:
```
## Workaround to use another registry - remove this later
export K3D_IMAGE_LOADBALANCER=k8snutshell.azurecr.io/k3d-io/k3d-proxy:5.4.6
export K3D_IMAGE_TOOLS=k8snutshell.azurecr.io/k3d-io/k3d-tools:5.4.6
##
```
* ersetze Configdatei mit einer Version ohne Mirror:
```
mv k3d-develop-config-nomirror.yaml k3d-develop-config.yaml
```