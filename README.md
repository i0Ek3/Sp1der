# Sp!der

> spider!!!

## 0x01 Install Packages

Before `spider` you should install some packages by run follows command:

```Shell
$ git clone https://github.com/i0Ek3/Sp1der
$ cd Sp1der/
$ sudo ./install_pkg.sh
```

## 0x02 YSK

And install_pkg.sh script support Unix system(Linux or Mac OS), yes, there is no Windows support, I hate Windwos!! 

In other hand, you should install `chromedriver` and `geckodriver` for your browsers(like Chrome or Firefox), also you want to install `PhantomJS`, a non-GUI, programmable WebKit browser. Charles also need, please install it by your own way.

By the way, this project based on Python 3.7.

For use spider better, we should know about basic HTTP knowledge, please learn it by yourself. There is recommend to read 《图解HTTP》.

## 0x03 How?

A spider contains a scheduler, url manager, downloader, parser and application. And its' structure follows below:

```Shell

scheduler 
    |
    |___url manager
            |
            |___dowloader
                |
                |___parser
                    |
                    |___application

```

That means a scheduler schedule url manager to fetch valid url and pass it to dowloader, while downloader download content from that url, parser parse it and return that result to scheduler. For this time, scheduler combine all these valuable message to an application. 

## 0x04 Credit

- [@Germey](https://github.com/Germey)
