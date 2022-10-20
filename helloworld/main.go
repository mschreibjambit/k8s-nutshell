package main

import (
	"fmt"
	"log"
	"net/http"
	"os"
	"time"
)

var (
	name       string
	secretname string
)

func handler(w http.ResponseWriter, r *http.Request) {
	str := "HelloWorld"
	if name != "" {
		str = fmt.Sprintf("%s - Hello %s", str, name)
	}
	if secretname != "" {
		str = fmt.Sprintf("%s  - Secretname:  %s", str, secretname)
	}
	w.Write([]byte(str))
}

func die(w http.ResponseWriter, r *http.Request) {
	go func() {
		time.Sleep(2 * time.Second)
		log.Fatalln("somebody wants me to die....")
	}()
	w.Write([]byte("Bye Bye World"))
}

func main() {
	name = os.Getenv("NAME")
	secretname = os.Getenv("SECRETNAME")
	http.HandleFunc("/", handler)
	http.HandleFunc("/die", die)

	if err := http.ListenAndServe(":8080", nil); err != nil {
		log.Fatal(err)
	}
}