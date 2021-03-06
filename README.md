
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


+ hourly checking of any infrastructure with:
    + apisch + multisitemap
    + apipong
    + webpageshot

+ current information about infrastructure
    + registrar
    + dns records
    + ns, cloudflare,digitalocean
    + servers
    + parkings


With multisitemap it's possible to check the infrastructure nad compare every hour what kind of differents are comming and doing some event
what can help fix bugs or create ticket and send information to support team



OFFER.
monitorowanie infrastruktury firm, tych lokalnych r??wnie?? ze skanowaniem mapy sieci i jej replikowaniem

MORE:
[Wielka rezygnacja specjalist??w ds. cyberbezpiecze??stwa - CRN](https://crn.pl/aktualnosci/wielka-rezygnacja-specjalistow-ds-cyberbezpieczenstwa/)



# Warstwa ochronna infrastruktury


ApiDSL mo??e by?? jednym z kierunk??w u??ycia mo??e by?? warstwa ochronna, cyberbezpiecze??stwa system??w informatycznych.

Bezpiecze??stwa dla system??w istniej??cych, gdy?? tak jak w samochodach opr??cz operacyjnych zada?? s?? te diagnostyczne

W sieciach z regu??y to zewn??trzne systemy diagnostyczne, w modelu SaaS

Druga warstwa, zaraz po warstwie logiki biznesowej aplikacji, 
niezale??na od wewn??trznych i zewn??trznych, co?? pomi??dzy, na niezale??nej inrastrukturze , jak firewall pomi??dzy intranetem i internetem

R??wnie?? podczas developmentu, jako warstwa s??u????ca do fizycznej diagnostyki ca??ej infrastruktury.




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
apidsl 'letwhois.ns("softreck.com").print()'
apidsl 'path.load("domain.txt").letwhois.ns().print()'
apidsl 'path.load("domain.txt").split().letwhois.ns().print()'
```

./puppeteer/screenshot.sh http://softreck.com

```bash
apidsl --get "apidsl.txt"
apidsl 'path.load("domain.txt").split().letwhois.ns().txt.appendAtTheEnd("$path.load")'
apidsl 'path.load("domain.txt").split().letwhois.ns().txt.prependToSentence("$path.load , ")'
apidsl 'let("$dot",".").path.load("domain.txt").split().txt.prepend("https://www$dot").puppeteer.screenshot()'
apidsl 'let("$dot",".").path.load("domain.txt").split().txt.prepend("http://www$dot").puppeteer.screenshot()'
apidsl 'path.load("domain.txt").split().txt.prepend("https://").puppeteer.screenshot()'
```

# wy??wietl dokumentacj?? z drugiej linii w kodzie, 
# zaraz po deklaracji, linia po linii wyjasnieniem branym z komentu i linijki kodu
```
apidsl --doc 'path.load("domain.txt").split().txt.prepend("http://").puppeteer.screenshot()'
apidsl -d 'path.load("domain.txt").split().txt.prepend("http://").puppeteer.screenshot()'
```


URUCHOMIENIE:
```bash
apidsl -d 'path.load("domain.txt").split().txt.prepend("http://").puppeteer.screenshot()'
```

ZASADA DZIA??ANIA
```bash
# pobierz list?? domen z pliku: domains.txt
path.load("domains.txt")
# pobierz kolejn?? linik?? w p??tli
split()
# do????cz http:// do nazwy domeny
txt.prepend("http://")
# zrzu?? do pliku widok z adresu
puppeteer.screenshot()
```

get title
```bash
./apidsl.sh 'http("https://softreck.com").letpath.tag("title")'
```

```bash
cat domain.txt | ./letWhois.sh softreck.com
```

```bash
cat domain.txt | ./letWhois.sh
```

file domain.txt
```bash
softreck.com
```

OUTPUT:

    Softreck &#124; Leadership Through Software Development



## EXAMPLES [<span style='font-size:20px;'>&#x270D;</span>](https://github.com/inframonit/docs/edit/main/START/EXAMPLES.md)

Rozwi??zanie #apidsl s??u??y pisaniu komend do wcze??niej napisanych skrypt??w, bibliotek, aplikacji. Zamiast ??cie??ek do plik??w u??ywamy nazw jako funkcji z parametrem. Korzy????? re-u??ycie kodu, zamiast refaktoryzacji! APIDSL to jedno z rozwi??za?? w (pisanej jeszcze) ksi????ce #hipermodularyzacja

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

przygotowa?? scenariusze
UI
backend
remote deployment
uruchomi?? na RPI zero





# Tags

+ scripts
+ language

---

+ [inframonit/bash](https://github.com/inframonit/bash)
