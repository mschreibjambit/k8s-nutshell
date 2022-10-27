# Aufgabe

* Schau dir an was kustomize hier ausgibt:

kubectl kustomize

* Vergleiche die Ausgabe mit ../complete.yaml z.B.:

kubectl kustomize > kustomize_out.yaml
diff kustomize_out.yaml ../complete.yaml

* kustomize wertet die Datei kustomization.yaml aus. Schau dir mal die Reihenfolge vom Punkt resources an. Hat es Auswirkungen?

* Ändere mal in der Datei kustomization.yaml den namespace. Wie wirkt sich das aus?
