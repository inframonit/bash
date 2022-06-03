
## EXAMPLES [<span style='font-size:20px;'>&#x270D;</span>](https://github.com/inframonit/bash/edit/main/EXAMPLES.md)

Rozwiązanie #apidsl służy pisaniu komend do wcześniej napisanych skryptów, bibliotek, aplikacji. Zamiast ścieżek do plików używamy nazw jako funkcji z parametrem. Korzyść? re-użycie kodu, zamiast refaktoryzacji! APIDSL to jedno z rozwiązań w (pisanej jeszcze) książce #hipermodularyzacja

API + DSL = Application Programming Interface controlled over Domain Specific Language
#apidsl is available for testing
#hypermodularity #hyperprogramming #mvp #prototyping #programming #testing

### install

[minsungson/GitHub-cURL: A guide to installing files from GitHub repos in terminal using cURL](https://github.com/minsungson/GitHub-cURL)

help
```bash
./apidsl -h
```

init files and folders to start writing scripts
```bash
./apidsl init
```

```bash
./apifork install
```


```bash
./apifork update
```

## START

```js
load("domains.txt")
.split("/n")
.http()
.xpath("title")
.appendToFile("titles.txt")
```


### xpath from functions

```bash
./apidsl 'f.http("https://softreck.com").f.xpath("title")'
```


### tag from letpath

```bash
./apidsl 'f.http("https://softreck.com").letpath.tag("title")'
```


### nameservers

```apifork
https://github.com/letwhois/bash whois
```

```bash
./apidsl 'whois.ns("softreck.com")'
```



start using

```bash
./apidsl 'puppeteer.csv("premium.pl/login_user_screenshot.csv")'
```

```bash
./apidsl 'puppeteer.csv("premium.pl/login_user_screenshot.csv").split().botreck.puppeter()'
```

### loop

```bash
./apidsl 'f.load("domains.txt").split("/n").f.http().f.xpath("title").f.appendToFile("titles.txt")'
```
