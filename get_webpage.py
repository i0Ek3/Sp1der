#!/usr/bin/env python
# coding=utf-8

import http.cookiejar as cklib
import urllib.request as ur

def get_webpage_by_url(url):
    resp = ur.urlopen(url)
    check_code(resp, url)

def get_webpage_by_req(url):
    req = ur.Request(url)
    req.add_header("user-agent", "Mozilla/5.0")
    resp = ur.urlopen(req)
    check_code(resp, url)

def get_webpage_by_cookie(url):
    ck = cklib.CookieJar()
    opener = ur.build_opener(ur.HTTPCookieProcessor(ck))
    ur.install_opener(opener)
    resp = ur.urlopen(url)
    check_code(resp, url)
    print(ck)

def check_code(resp, url):
    if resp.getcode() == 200:
        print(resp.read())
    else:
        print("cannot open url: " % url)


def main():
    url = "http://www.baidu.com"
    get_webpage_by_url(url)
    get_webpage_by_req(url)
    get_webpage_by_cookie(url)

if __name__ == '__main__':
    main()
