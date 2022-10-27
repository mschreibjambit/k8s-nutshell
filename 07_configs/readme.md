# Aufgabe

* Spiele die ConfigMap, das Secret und das neue Deployment auf:

kubectl apply -f configmap.yaml
kubectl apply -f secret.yaml
kubectl apply -f deployment.yaml

* Öffne den Browser http://helloworld.127.0.0.1.nip.io hier siehst nun die Konfigurationen.

* Ändere mal etwas an der ConfigMap (nur im Data Feld) und lade sie auf den K8S

* Prüfe nochmal im Browser http://helloworld.127.0.0.1.nip.io - du siehst keine Änderung

* Lösche alle helloworld Pods:

kubectl delete pods -n demo -l app=helloworld

* Prüfe nochmal im Browser http://helloworld.127.0.0.1.nip.io - du siehst die Änderungen
