
![logo.inframonit.com](https://logo.inframonit.com/1/cover.png)

# [docs.inframonit.com](https://docs.inframonit.com/) [<span style='font-size:20px;'>&#x270D;</span>](https://github.com/inframonit/docs/edit/main/ABOUT/MENU.md) 

+ [Blog - www.inframonit.com](https://www.inframonit.com/)
+ [Code - bash.inframonit.com](https://bash.inframonit.com/)
+ [Example use cases - examples.inframonit.com](http://examples.inframonit.com)
+ [Logotyp: logo.inframonit.com](https://logo.inframonit.com/)

+ [LICENSE](LICENSE)

## About inframonit [<span style='font-size:20px;'>&#x270D;</span>](https://github.com/inframonit/docs/edit/main/ABOUT/ABOUT.md)

this is part of apidsl for inframonit ecosystem to help You manage the applications

Monitoring includes:
1. Internet domains and subdomains,
2. Servers of the client and partners, e.g. dns (nazwa.pl, OVH, Cloudflare)
3. SaaS services of the client and its partners

Examples of faults detected by InfraMonit:
1. Lack of availability of websites and subpages
2. Unable to log in
3. It is not possible to send a contact message from the form
4. No purchase in the store
5. Extended shipment of goods,
6. Unavailability of goods
7. Failure of payment systems


# Monitor your positions in SERP
Track your positions in Search Engine Result Pages for chosen keywords every day. How is your situation in Google compared to yesterday or two days ago? Keep an eye on ranking fluctuations and, if necessary, be ready to take action!

# Keep track of your competitors in Google
After you run the analysis of your own domain, take a better look at the competitive websites. The more you know about their actions, the better conclusions you can draw for yourself!



# Warstwa ochronna infrastruktury


ApiDSL może być jednym z kierunków użycia może być warstwa ochronna, cyberbezpieczeństwa systemów informatycznych.

Bezpieczeństwa dla systemów istniejących, gdyż tak jak w samochodach oprócz operacyjnych zadań są te diagnostyczne

W sieciach z reguły to zewnętrzne systemy diagnostyczne, w modelu SaaS

Druga warstwa, zaraz po warstwie logiki biznesowej aplikacji, 
niezależna od wewnętrznych i zewnętrznych, coś pomiędzy, na niezależnej inrastrukturze , jak firewall pomiędzy intranetem i internetem

Również podczas developmentu, jako warstwa służąca do fizycznej diagnostyki całej infrastruktury.

## Install inframonit [<span style='font-size:20px;'>&#x270D;</span>](https://github.com/inframonit/docs/edit/main/DOCS/INSTALL.md)


install dependencies from file: [apifork.txt](apifork.txt)

```bash
./apifork
```

install packages for apidsl from file: [apidsl.txt](apidsl.txt)

```bash
./apidsl.sh install
```

OR
install packages inside apidsl

```bash
cd apifork
./add https://github.com/letwhois/bash bash letwhois
./add https://github.com/reactphp/dns php reactphp
```



## Start inframonit [<span style='font-size:20px;'>&#x270D;</span>](https://github.com/inframonit/docs/edit/main/DOCS/START.md)


get whois data

```bash
./apidsl.sh 'letwhois.ns("softreck.com")'
```

get title
```bash
./apidsl.sh 'http("https://softreck.com").letpath.tag("title")'
```

```bash
cat domain.txt | ./letWhois.sh softreck.com
```

file domain.txt
```bash
softreck.com
```

OUTPUT:

    Softreck &#124; Leadership Through Software Development



## EXAMPLES [<span style='font-size:20px;'>&#x270D;</span>](https://github.com/inframonit/docs/edit/main/START/EXAMPLES.md)

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
./apidsl 'path.file("botreck.txt").split().puppeteer.csv()'
```

```bash
./apidsl 'puppeteer.csv("premium.pl/login_user_screenshot.csv").split().botreck.puppeter()'
```

### loop

```bash
./apidsl 'f.load("domains.txt").split("/n").f.http().f.xpath("title").f.appendToFile("titles.txt")'
```


## TODO [<span style='font-size:20px;'>&#x270D;</span>](https://github.com/inframonit/docs/edit/CONTRIBUTION/TODO.md)


## TODO

przygotować scenariusze
UI
backend
remote deployment
uruchomić na RPI zero





# Tags

+ scripts
+ language

---

+ [edit](https://github.com/inframonit/docs/edit/main/README.md)
+ [inframonit/bash](https://github.com/inframonit/bash)
