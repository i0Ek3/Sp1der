# Sp!der

Awesome spider!!!


## 0x01 Install

Before `spider` you should install some packages or run my script:

```Shell
$ git clone https://github.com/i0Ek3/Sp1der
$ cd Sp1der/
$ sudo ./pkgInstall.sh
```

And this script support Unix system(Linux or Mac OS), yes, there is no Windows support, I hate Windwos!! 

In other hand, you should install `chromedriver` and `geckodriver` for your browsers(like Chrome or Firefox), also you want to install `PhantomJS`, a non-GUI, programmable WebKit browser.

Charles also need, please install it by your own way.

By the way, this project based on Python 3.7.


## 0x02 Basic HTTP

For use spider better, we should know about basic HTTP knowledge, please learn it by yourself.

There is recommend to read 《图解HTTP》.


## 0x03 How-To Use Library

* urllib

```Python
import urllib.request

# grap simple web
response = urllib.request.urlopen('https://www.python.org')
print(response.read().decode('utf-8'))
print(response.status)
print(type(response))

# grap complicated information
request = urllib.request.Request('https://python.org')
response = urllib.request.urlopen(request)
print(response.read().decode('utf-8'))

# If you want know more about library, please visit https://www.python.org.
```

* requests


## 0x04 Credit

- [@Germey](https://github.com/Germey) 崔庆才，author of 《Python3网络爬虫开发实战》.










