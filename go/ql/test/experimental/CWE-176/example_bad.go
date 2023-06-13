package main

import (
	"fmt"
	"html"
	"net/http"
	"strings"

	"golang.org/x/text/unicode/norm"
)

func main() {}

func bad() {
	http.HandleFunc("/bad1", func(w http.ResponseWriter, req *http.Request) {

		unicode_input := req.URL.Query().Get("unicode_input")
		escaped := html.EscapeString(unicode_input)
		unicode_norm := norm.NFKC.String(escaped) // $result=BAD
		fmt.Println(w, "Results: %q", unicode_norm)
	})

	http.HandleFunc("/bad2", func(w http.ResponseWriter, req *http.Request) {

		unicode_input := req.URL.Query().Get("unicode_input")
		if strings.IndexAny(unicode_input, "<﹤＜") == -1 {
			unicode_norm := norm.NFKC.String(unicode_input) // $result=BAD
			fmt.Println(w, "Results: %q", unicode_norm)
		}

	})

	http.HandleFunc("/bad3", func(w http.ResponseWriter, req *http.Request) {

		unicode_input := req.URL.Query().Get("unicode_input")
		if !strings.ContainsAny(unicode_input, "<﹤＜") {
			unicode_norm := norm.NFKC.String(unicode_input) // $result=BAD
			fmt.Println(w, "Results: %q", unicode_norm)
		}

	})

	http.HandleFunc("/bad4", func(w http.ResponseWriter, req *http.Request) {

		unicode_input := req.URL.Query().Get("unicode_input")
		if !strings.Contains(unicode_input, "<") {
			unicode_norm := norm.NFKC.String(unicode_input) // $result=BAD
			fmt.Println(w, "Results: %q", unicode_norm)
		}

	})

}
