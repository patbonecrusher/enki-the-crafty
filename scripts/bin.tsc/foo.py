#!/usr/bin/env python

from bs4 import BeautifulSoup
import re
import sys
from pyramda import map, inc

html_page=""
for line in sys.stdin:
    html_page += line

soup = BeautifulSoup(html_page, features="lxml")

links=map(lambda x: x.get('href'), soup.find_all('a'))
_, *links = links
links = filter(lambda x: x.endswith('/'), links)
*links, tail = list(links)
print(tail[:-1])
