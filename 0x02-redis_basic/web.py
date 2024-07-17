#!/usr/bin/env python3
"""get_page function is web cache and tracker"""

import requests
import time
from functools import wraps

cache = {}
cache_expiration = {}

def cache_page(func):
    @wraps(func)
    def wrapper(url):
        current_time = time.time()
        if url in cache and current_time < cache_expiration[url]:
            cache["count:" + url] += 1
            return cache[url]
        else:
            page_content = func(url)
            cache[url] = page_content
            cache_expiration[url] = current_time + 10
            cache["count:" + url] = cache.get("count:" + url, 0) + 1
            return page_content
    return wrapper

@cache_page
def get_page(url: str) -> str:
    response = requests.get(url)
    return response.text
