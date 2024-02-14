#!/usr/bin/python3
"""Module to recursively query Reddit API for all hot article titles of a subreddit."""
import requests

def recurse(subreddit, hot_list=[], after=""):
    """Recursively collects titles of all hot articles for a given subreddit."""
    url = f'https://www.reddit.com/r/{subreddit}/hot.json'
    headers = {'User-Agent': 'MyRedditRecursiveScraper/0.1 (by /u/yourRedditUsername)'}
    params = {'limit': 100, 'after': after}  # Use pagination
    
    response = requests.get(url, headers=headers, params=params, allow_redirects=False)
    
    if response.status_code != 200:
        return None
    
    try:
        data = response.json()
        posts = data['data']['children']
        for post in posts:
            hot_list.append(post['data']['title'])
        
        after = data['data']['after']
        if after is not None:
            return recurse(subreddit, hot_list, after)
        return hot_list
    except (KeyError, ValueError):
        return None
