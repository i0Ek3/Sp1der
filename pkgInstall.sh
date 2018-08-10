## 
## pkgInstall.sh
## @ianpasm(kno30826@gmail.com)
## 2018-07-26 10:39:45
## 
 
#!/bin/bash

echo 'This action will install some necessary packages in your system automatically, please wait a moment....'
echo 'You should know, this script are not support Windwos and other linux except Ubuntu/Debian and its derive versions!'

func type() # detective platform
{
    echo $(uname)
}


func commonInstall()
{
    pip3 install requests selenium aiohttp \ # implement request for http
                 wheel \ # use for install package when you have low network speed
                 cchardet aiodns \ # aiohttp needs
                 lxml beautifulsoup4 pyquery \ # interpreter lib
                 tesserocr pillow \ # use for identifying code, if this not work well please install tesserocr from source code
                 pymongo redis pymysql \ # database
                 flask tornado \ # web related
                 mitmproxy \ 
                 pyspider Scrapy scrapyd scrapyd-client scrapy-splash scrapy-redis\ 
                 python-scrapyd-api scrapyrt \ 
                 gerapy
}

func brewInstall()
{
    brew install imagemagick \
             tesseract --with-all-languages \ # if this not work well
             mysql mongodb redis pymysql \ # database
             mitmproxy \ # catch package

    brew cask install docker
}

func nodeInstall()
{
    if [ -e /usr/bin/npm ]
    then 
        npm install -g appium
    else
        echo 'Please install node first follow this site: https://nodejs.org/en/download/.'
        sleep 5
    fi
}

func macInstall()
{
    if [ -e /usr/bin/brew ]
    then
        brewInstall
    else
        /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
        brewInstall
    fi
}

func linuxInstall()
{
    # basic install
    sudo apt install -y \
        python3-dev build-essential libssl-dev libffi-dev libxml2 libxml2-dev libxslt1-dev zlib1f-dev \
        tesseract-ocr libtesseract-dev libleptonica-dev \
        mysql-server mysql-client redis-server

    # install docker
    curl -sSL https://get.docker.com/ | sh 
}


func otherInstall()
{
    if [ -e /usr/bin/ruby ] 
    then
        gem install redis-dump
    else
        echo 'There is no Ruby installed on your system, please install ruby first.'
        sleep 5
    fi
}

func doneNow()
{
    echo 'Okay, all of this packages installed done now, you just need to config it a little, enjoy this~'
    sleep 5
}

func main()
{
    if [ ${type} == "L|linux" ];
        then
            commonInstall
            linuxInstall
            doneNow
    elif [ ${type} == "D|drawin" ];
        then
            commonInstall
            macInstall
            doneNow
    else 
        echo "Yes, I hate Windows! There is no Windows support! No way!!"
    fi
}

main


