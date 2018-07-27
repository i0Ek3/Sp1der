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
                 pymongo redis \ # database
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
    gem install redis-dump
}

func main()
{
    if [ ${type} == "L|linux" ];
        then
            commonInstall
            linuxInstall
    elif [ ${type} == "D|drawin" ];
        then
            commonInstall
            macInstall
    else 
        echo "I hate Windows! There is no Windows support!"
    fi
}

main


