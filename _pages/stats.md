---
layout: default
title: "Stats"
created: 2021-10-24
---

{% assign total_words = 0 %}
{% for post in site.pages %}
	{% assign page_words = post.content | number_of_words %}
	{% assign total_words = total_words | plus: page_words %}
{% endfor %}

{% assign total_pages = site.pages | size %}

There are `{% include numf.html number=total_words %}` words across `{% include numf.html number=total_pages %}` pages on this website.

{% comment %}<!--

What sort of stats would be nice to see here?
- Most edited pages
- Most viewed pages (I don't have those stats)
- Longest pages
- Graph of word count over time!!!
- How many visitors to the website over time? (I also don't have this data)
- 

-->{% endcomment %}