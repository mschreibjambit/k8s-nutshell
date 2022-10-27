# Aufgabe

* Lege den Pod mit folgendem Befehl an:

kubectl apply -f pod.yaml

* Lass dir die Pods im Namespace demo anzeigen:

kubectl get pods –n demo

* Just for Fun - Pods aus allen Namespaces:

kubectl get pods -A