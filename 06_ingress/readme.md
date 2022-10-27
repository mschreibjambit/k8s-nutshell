# Aufgabe

* Es wird ein interne Service benötigt. Deshalb deployen wir folgendes:

kubectl apply -f service.yaml

* Nun wird der Ingress noch aktiviert:

kubectl apply -f ingress.yaml

* Öffne den Browser: http://helloworld.127.0.0.1.nip.io und öffne http://helloworld.127.0.0.1.nip.io:8080
    Ist identisch... 

* Öffne im Browser: http://helloworld2.127.0.0.1.nip.io und öffne http://helloworld2.127.0.0.1.nip.io:8080
    Warum bekomme ich bei dem einen einen 404 und dem anderen eine Ausgabe?