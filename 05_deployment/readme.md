# Aufgabe

* Lass dir alle Pods im Namespace demo anzeigen:

kubectl get pods -n demo

* jetzt installiere das Deployment

kubectl apply -f deployment.yaml

* Lass dir nocmal alle Pods im Namespace demo anzeigen:

kubectl get pods -n demo

* falls es noch den Pod aus Aufgabe 03_pod gibt:

kubectl delete pods -n demo helloworld

# Zusatzaufgaben für die Schnellen:

* Skaliere das Deployment (Achtung: setzte die Replicas nicht zu hoch - kann deinen Rechner schießen...):

kubectl scale -n demo --replicas=3 deployment helloworld

* Lass dir nun die Pods anzeigen:

kubectl get pods -n demo

* Just vor Fun - Versuche den anderen Pod zu löschen - du musst dazu den Namen kopieren

* Lass dir nochmal die Pods anzeigen....

* Man kann auch die Pods über die Labels selectieren. Schaue hier mal in das deployment.yaml. Beispiel fürs Löschen:

kubectl delete pods -n demo -l app=helloworld