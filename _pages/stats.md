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

{{ total_words | number_with_delimiter }} words