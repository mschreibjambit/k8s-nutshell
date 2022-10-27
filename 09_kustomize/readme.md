# Aufgabe

* Hier wird eine mögliche Struktur mit kustomize gezeigt. Die Idee ist, für verschiedene Umgebungen wie dev, stage und prod, die Gemeinsamkeiten in base zusammen zu ziehen. Deshalb gibt es den base Ordner. Hier finden sich die eigentlichen Dateien, wie namespace, deployment, service und ingress. Manche Werte sind hier einfach mit Dummy Werte besetzt. Geht man nun in den Ordner dev oder prod, werden diese Dummy Werte überschrieben. Dies kann man sich nun ansehen:

kubectl kustomize dev > dev-out.yaml
kubectl kustomize prod > prod-out.yaml
diff dev-out.yaml prod-out.yaml

* Für weiterführende Infos https://kubectl.docs.kubernetes.io/references/kustomize/kustomization