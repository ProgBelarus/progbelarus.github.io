---
layout: page
permalink: /publications/
title: publications
description:
years: [2023, 2022, 2021, 2019]
nav: true
nav_order: 1
preview: false
---
<!-- _pages/publications.md -->

Below is a list of my journal and conference publications and preprints in reverse chronological order. You can also check out my [Google Scholar profile](https://scholar.google.com/citations?hl=en&user=P0-hDecAAAAJ).

<div class="publications">

{%- for y in page.years %}
  <h2 class="year">{{y}}</h2>
  {% bibliography -f papers -q @*[year={{y}}]* %}
{% endfor %}

</div>
