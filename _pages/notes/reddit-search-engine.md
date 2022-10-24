---
layout: default
title: "Reddit search engine"
created: 2022-10-24
---

There has been talk on the internet about google results getting worse, and more and more people are starting to use `site:reddit.com` in their search queries to get better results and answers from real people[^99%invisible].

[^99%invisible]: It has even been mentioned on a recent 99% Invisible podcast episode, [Search and Ye Might Find](https://99percentinvisible.org/episode/search-and-ye-might-find/)

So what about creating a mini search engine specifically for searching reddit? It can scrape the top results from each of the few most relevant posts to your search and display them all together.

Is there anything that could be added here in interesting ways to make the results even better?

- Train a neural network to give scores to posts on helpfulness or how relevant they are to answering the question
- Run sentiment analysis on answers / responses
- Suggest variations of your question, or interesting other tangents
- Mix in some GPT-3 generated results in alongside the real human-written results (or perhaps this would ruin the whole point!)
- Some indication on the trustworthiness of a particular user?
- A way to save the responses you like, as well as the context in which you found them