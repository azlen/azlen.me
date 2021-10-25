---
layout: index
title: "Azlen Elza"
# subtitle: Context-creator
---

Dear fellow traveller, welcome to my little corner of the internet!

<span style="font-size: 10pt">Please take your <a href="/doorstep">shoes</a> off as you step inside.</span>

Let me tell you a [story](/stories) <br>
Or perhaps I should [introduce](/intro) myself first?

{% assign total_words = 0 %}
{% for post in site.pages %}
    {% assign page_words = post.content | number_of_words %}
    {% assign total_words = total_words | plus: page_words %}
{% endfor %}

<!-- total wordcount: {{ total_words }} -->