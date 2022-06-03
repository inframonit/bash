
![logo.inframonit.com](https://logo.inframonit.com/1/cover.png)

# [bash.inframonit.com](https://bash.inframonit.com/) [<span style='font-size:20px;'>&#x270D;</span>](https://github.com/inframonit/bash/edit/main/DOCS/MENU.md) 

+ [Example usae cases - examples.inframonit.com](http://examples.inframonit.com)
+ [Blog - www.inframonit.com](https://www.inframonit.com/)
+ [Documentation - docs.inframonit.com](https://docs.inframonit.com/)
+ [Logotyp: logo.inframonit.com](https://logo.inframonit.com/)

+ [LICENSE](LICENSE)



## About inframonit [<span style='font-size:20px;'>&#x270D;</span>](https://github.com/inframonit/bash/edit/main/DOCS/ABOUT.md)

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

  

## Install inframonit [<span style='font-size:20px;'>&#x270D;</span>](https://github.com/inframonit/bash/edit/main/DOCS/INSTALL.md)


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



## Start inframonit [<span style='font-size:20px;'>&#x270D;</span>](https://github.com/inframonit/bash/edit/main/DOCS/START.md)


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


## TODO [<span style='font-size:20px;'>&#x270D;</span>](https://github.com/inframonit/bash/edit/main/TODO.md)


## TODO

przygotować scenariusze
UI
backend
remote deployment
uruchomić na RPI zero




## Contribution [<span style='font-size:20px;'>&#x270D;</span>](https://github.com/flatedit/examples/edit/main/DOCS/CONTRIBUTION.md)


### Update

apifork
```bash
curl https://raw.githubusercontent.com/apifork/bash/main/apifork.sh -o apifork
./apifork update
```

apipackage
```bash
curl https://raw.githubusercontent.com/apipackage/bash/main/apipackage.sh -o apipackage
./apipackage update
```

### Remove


apifork
```bash
./apifork remove
```

### Install

Install dependencies after created project
```bash
curl https://raw.githubusercontent.com/apifork/bash/main/apifork.sh -o apifork
echo "https://github.com/flatedit/bash.git flatedit" > "apifork.dev.txt"
./apifork install apifork.dev.txt
```


Install package list after created project
```bash
curl https://raw.githubusercontent.com/apipackage/bash/main/apipackage.sh -o apipackage
echo "https://github.com/letwhois/bash apidsl/apidsl/bash letwhois" >> "apipackage.txt"
./apipackage install
```

Edit documentation with flatedit
```bash
echo "./DOCS/MENU.md" >> "flatedit.txt"
echo "./DOCS/ABOUT.md" >> "flatedit.txt"
echo "./DOCS/FOOT.md" >> "flatedit.txt"
```

### Update documentation

```bash
 ./flatedit
```

### Config project file

The config file: **.apifork** can be another, e.g. **apifork.txt**

Just change the first line in  **.apifork** on **apifork.txt**
```bash
apifork.txt
```

### install

[minsungson/GitHub-cURL: A guide to installing files from GitHub repos in terminal using cURL](https://github.com/minsungson/GitHub-cURL)

```bash
./apifork install
```
OR

```bash
./apifork
```

### update

```bash
./apifork update
```


### remove

```bash
./apifork remove
```



# Tags

+ scripts
+ language

---

+ [edit](https://github.com/inframonit/bash/edit/main/README.md)
+ [inframonit/bash](https://github.com/inframonit/bash)
