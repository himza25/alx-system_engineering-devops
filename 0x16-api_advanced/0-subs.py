#!/usr/bin/python3
"""Module to query Reddit API for subreddit subscriber count."""
import requests


def number_of_subscribers(subreddit):
    """Return number of subscribers for a subreddit."""
    url = 'https://www.reddit.com/r/{}/about.json'.format(subreddit)
    headers = {
        'User-Agent': ('Python:subreddit.subscriber.counter:v1.0 '
                       '(by /u/yourusername)')
    }
    response = requests.get(url, headers=headers, allow_redirects=False)

    if response.status_code == 200:
        try:
            return response.json()['data']['subscribers']
        except (KeyError, ValueError):
            return 0
    return 0
