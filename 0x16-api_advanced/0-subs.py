#!/usr/bin/python3
"""
A script to query the Reddit API and return the number of subscribers
for a given subreddit. If the subreddit is invalid, returns 0.
"""
import requests

def number_of_subscribers(subreddit):
    """
    Queries the Reddit API for a given subreddit and returns the subscriber count.
    """
    url = f'https://www.reddit.com/r/{subreddit}/about.json'
    headers = {'User-Agent': 'Python:subreddit_subscriber_counter:1.0 (by /u/your_username)'}
    response = requests.get(url, headers=headers, allow_redirects=False)

    if response.status_code == 200:
        try:
            data = response.json()
            return data['data']['subscribers']
        except KeyError:
            return 0
    return 0
