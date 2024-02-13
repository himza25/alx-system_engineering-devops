#!/usr/bin/python3
"""Module to query Reddit API for subreddit subscriber count."""
import requests


def number_of_subscribers(subreddit):
    """Return number of subscribers for a subreddit."""
    url = f'https://www.reddit.com/r/{subreddit}/about.json'
    headers = {
        'User-Agent': 'RedditSubCounter/1.0 (by /u/himza25; script for educational purposes)'
    }
    response = requests.get(url, headers=headers)
    print("Status Code:", response.status_code)
    print("Response:", response.text)

    if response.status_code == 200:
        try:
            return response.json()['data']['subscribers']
        except (KeyError, ValueError):
            return 0
    return 0
