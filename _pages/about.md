---
permalink: /
layout: default
redirect_from:
  - /about/
  - /about.html
---
<section id="about" class="qk-biography" aria-labelledby="about-title">
  <h2 id="about-title">About me</h2>
  <p>Hello! I am a master’s student in the <a href="https://www.cs.tsinghua.edu.cn/csen/">Department of Computer Science and Technology</a> at <a href="https://www.tsinghua.edu.cn/en/">Tsinghua University</a>, where I am advised by <a href="https://www.cs.tsinghua.edu.cn/csen/info/1312/4393.htm">Prof. Fuchun Sun</a>. I received my bachelor’s degree in Computer Science and Technology from <a href="https://ev.buaa.edu.cn/">Beihang University</a> in 2025, with a minor in Mathematics and Applied Mathematics. During my undergraduate studies, I received the <a href="#honors">Shen Yuan Medal</a>, the <a href="#honors">May Fourth Youth Medal</a>, and the <a href="#honors">National Scholarship</a>.  </p>
  <p>I am seeking PhD opportunities for Fall 2028 and summer research internship opportunities for Summer 2027. My research interests are <strong>Reinforcement Learning and Dexterous Manipulation</strong>, with the long-term goal of bringing intelligence into the physical world. I am currently exploring how to improve reinforcement learning with limited samples and how to improve policy performance when the available reward signals are suboptimal.</p>
</section>

<section id="publications" aria-labelledby="publications-title">
  <div class="section-heading"><h2 id="publications-title">Selected publications</h2><span class="section-meta">Research</span></div>
  <div class="publications">
  {% for paper in site.data.publications %}
    <article class="publication{% if paper.draft %} publication-draft{% endif %}">
      <figure class="paper-figure paper-figure--{{ paper.venue | downcase }}">
        <a class="paper-figure-image" href="{{ paper.figure_full | relative_url }}" target="_blank" rel="noopener" aria-label="View full-size illustration for {{ paper.title | escape }} (opens in a new tab)">
          <img src="{{ paper.figure | relative_url }}" width="{{ paper.figure_width }}" height="{{ paper.figure_height }}" alt="{{ paper.figure_alt | escape }}" loading="lazy" decoding="async">
        </a>
        <figcaption><span class="paper-venue">{{ paper.venue | escape }} {{ paper.year }}</span></figcaption>
      </figure>
      <div class="publication-body">
        {% assign paper_title_url = paper.paper_url | default: paper.title_url %}
        <h3>{% if paper_title_url %}<a href="{{ paper_title_url | relative_url | escape }}"{% if paper.paper_tbr %} title="Paper and code to be released"{% endif %}>{{ paper.title | escape }}</a>{% else %}{{ paper.title | escape }}{% endif %}</h3>
        <p class="authors">{% for author in paper.authors %}{% if author.url %}<a href="{{ author.url | escape }}">{% endif %}{% if author.name == site.author.name %}<strong>{{ author.name | escape }}</strong>{% else %}{{ author.name | escape }}{% endif %}{% if author.url %}</a>{% endif %}{% if author.equal %}<sup title="Equal contribution">*</sup>{% endif %}{% unless forloop.last %}, {% endunless %}{% endfor %}</p>
        <p class="publication-status">{{ paper.status | escape }}</p>
        {% if paper.summary %}<p class="publication-summary">{{ paper.summary | escape }}</p>{% endif %}
        {% if paper.paper_url or paper.code_url or paper.project_url or paper.video_url or paper.paper_tbr or paper.code_tbr %}
        <div class="paper-links" id="{{ paper.venue | slugify }}-{{ paper.year }}-resources">
          {% if paper.paper_url %}<a href="{{ paper.paper_url | relative_url | escape }}">Paper</a>{% elsif paper.paper_tbr %}<span class="paper-link-pending" title="To be released">Paper (TBR)</span>{% endif %}
          {% if paper.code_url %}<a href="{{ paper.code_url | escape }}">Code</a>{% elsif paper.code_tbr %}<span class="paper-link-pending" title="To be released">Code (TBR)</span>{% endif %}
          {% if paper.project_url %}<a href="{{ paper.project_url | escape }}">Project</a>{% endif %}
          {% if paper.video_url %}<a href="{{ paper.video_url | relative_url | escape }}" target="_blank" rel="noopener" aria-label="Watch the {{ paper.venue | escape }} {{ paper.year }} demo (opens in a new tab)">Video</a>{% endif %}
        </div>
        {% endif %}
      </div>
    </article>
  {% endfor %}
  </div>
  <p class="contribution-note">* Equal contribution.</p>
</section>

<section id="honors" aria-labelledby="honors-title">
  <div class="section-heading"><h2 id="honors-title">Honors & awards</h2><span class="section-meta">Selected</span></div>
  <ul class="honors-list">
  {% for honor in site.data.honors %}
    <li><div><h3>{{ honor.name }}</h3><p>{{ honor.institution }}{% if honor.detail != "" %}<span class="honor-detail">{{ honor.detail }}</span>{% endif %}</p>{% if honor.results_url or honor.news_url or honor.video_url %}<div class="honor-links">{% if honor.results_url %}<a href="{{ honor.results_url | escape }}">Official results</a>{% endif %}{% if honor.news_url %}<a href="{{ honor.news_url | escape }}">Tsinghua news</a>{% endif %}{% if honor.video_url %}<a href="{{ honor.video_url | escape }}">Team video</a>{% endif %}</div>{% endif %}</div>{% if honor.date != "" %}<span class="honor-year">{{ honor.date }}</span>{% endif %}</li>
  {% endfor %}
  </ul>
</section>

<section id="education" aria-labelledby="education-title">
  <div class="section-heading"><h2 id="education-title">Education</h2></div>
  <div class="education-entry"><div><h3>Tsinghua University</h3><p>Master’s studies</p><p class="education-detail">Advised by Prof. Fuchun Sun</p></div><span class="education-year">2025–present</span></div>
  <div class="education-entry"><div><h3>Beihang University</h3><p>Undergraduate studies in Computer Science and Technology</p><p class="education-detail">Minor in Mathematics and Applied Mathematics</p></div><span class="education-year">2021–2025</span></div>
</section>
