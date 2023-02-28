---
layout: default
title: "Newsletter"
hide: [ date ]
---

*The rhythmic sound of a printing press and the smell of freshly inked e-paper, you step into the newsroom full of pneumatic tubes primed and ready for sending occasional dispatches over the intricate pipe-network of cyberspace.*

If you'd like to stay in-the-loop with my research and experiments, I've decided to start a little newsletter:

<style>
	form {
		display: flex;
	}
	
	input[type="email"], input[type="submit"] {
		all: unset;
	}
	
	input[type="email"] {
		background: var(--background);
		border: 2px solid var(--f_med);
		padding: 2px 10px;
		font-style: italic;

		flex: 1;
		max-width: 222px;
	}
	input[type="email"]:focus {
		background: var(--b_low);
	}

	input[type="submit"] {
		background: var(--f_med);
		color: var(--background);
		padding: 2px 10px;
		border: 2px solid var(--f_med);
		cursor: pointer;
	}

	input:focus-visible {
		box-sizing: border-box;
		outline: 1px solid var(--f_med);
		border: 2px solid var(--background);
	}
</style>

<scattergun-subscription-form publishable-key='WHaYuX6YZ6NPJoDf'>
	<template>
		<input type='email' placeholder="your@email.address" name='mailing_lists_subscriber[email]' onchange="this.value = this.value.trim()" /><input type='submit' value='Subscribe!'/>
	</template>
	<input type='email' placeholder="your@email.address" name='mailing_lists_subscriber[email]'/><input type='submit' value='Subscribe!'/>
</scattergun-subscription-form>

{% comment %}
<!--[^promise]: *I promise not to send emails too often!* Just the occasional dispatch, lab notes, or longer essays that I publish-->
{% endcomment %}