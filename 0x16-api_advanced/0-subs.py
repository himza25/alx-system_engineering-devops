#!/usr/bin/python3
"""Function to query subscribers on a given Reddit subreddit."""
import requests


def number_of_subscribers(subreddit):
    """Return the total number of subscribers on a given subreddit."""
    url = "https://www.reddit.com/r/{}/about.json".format(subreddit)
    headers = {
        "User-Agent": "linux:0x16.api.advanced:v1.0.0 (by /u/himza25)"
    }
    response = requests.get(url, headers=headers, allow_redirects=False)

    if response.status_code == 200 and 'application/json' in response.headers['Content-Type']:
        try:
            results = response.json().get("data")
            return results.get("subscribers", 0)
        except ValueError:  # Includes json.decoder.JSONDecodeError
            print("Error decoding JSON")
            return 0
    else:
        return 0
