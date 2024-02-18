0x19-postmortem

# Postmortem: Reddit API Connectivity Issue

## Issue Summary
During the "0x16. API advanced" project, students faced a significant challenge: connecting to the Reddit API to import subscriber data. This issue persisted from February 13, 2024, 4:00 AM to February 14, 2024, 4:00 AM UTC, affecting all students attempting to utilize the Reddit API. The root cause was identified as Reddit's API access restrictions, which were not initially accounted for, preventing students from fetching the required data.

## Timeline
- **4:30 AM UTC** - Initial reports from students unable to connect to the Reddit API.
- **5:00 AM UTC** - The issue was escalated to the course instructors.
- **9:00 AM UTC** - Investigation revealed Reddit API access restrictions as the culprit.
- **11:00 AM UTC** - Official recognition of the issue due to Reddit's API access policies.
- **1:00 PM UTC** - Instructors reached out to Reddit support for a resolution.
- **10:00 AM UTC, February 14** - Reddit support provided guidelines for obtaining the necessary access permissions.
- **2:00 PM UTC, February 14** - Students were granted the required permissions and resumed their projects.

## Root Cause and Resolution
The connectivity issue stemmed from Reddit's API access restrictions. The resolution involved direct communication with Reddit support, who then adjusted the access permissions, allowing students to successfully connect to the API and continue with their project tasks.

## Corrective and Preventative Measures
To prevent future occurrences of such issues, the following measures have been proposed:
1. **Pre-project Review**: Ensure all external APIs used in the curriculum are reviewed for access restrictions.
2. **Guidelines for API Usage**: Provide clear instructions for students on responsible API usage.
3. **Instructor Preparedness**: Train instructors on troubleshooting common API issues.
4. **Alternative Project Paths**: Develop backup project plans that do not rely on potentially restricted APIs.
5. **Community Engagement**: Establish relationships with API providers to support educational projects.

## Visualization of the Issue and Resolution Process
![Reddit API Connectivity Issue Resolution Process](https://i.ibb.co/D9c2dVt/Reddit-API-Connectivity-Issue-Resolution-Process.png)

*This diagram illustrates the step-by-step process taken to resolve the Reddit API connectivity issue, from initial detection through to the successful resolution.*

## Humorous Take
To lighten the mood and add a bit of humor to our postmortem, here's a meme reflecting our journey through the Reddit API connectivity issue:

![Humor in Troubleshooting](https://i.ibb.co/MDzVKnC/DALL-E-2024-02-18-18-33-45-A-cartoon-drawing-of-a-confused-programmer-sitting-in-front-of-a-computer.jpg)

*"I asked for subscribers, not mysteries!"*

---

This postmortem aims not only to document the issue and its resolution but also to serve as a learning experience, demonstrating the importance of preparedness and adaptability in the face of unexpected technical challenges.

