---
layout: page
permalink: /
title: about
nav: about

<!--description: <a href="https://ai.google/" target="_blank">Google AI</a> -->
address: <a href="https://www.google.com/maps/place/Googleplex/@37.4220656,-122.0862837,17z/data=!3m1!4b1!4m5!3m4!1s0x808fba02425dad8f:0x6c296c66619367e0!8m2!3d37.4220656!4d-122.0840897" class="page-description" target="_blank">Mountain View, California, USA </a>
---

<div class="col p-0 pt-4 pb-4">
  <h1 class="title text-left font-weight-bold">Otilia Stretcu</h1>
  {% if page.description %}
    <h6 class="m-0 mb-2" style="font-size: 0.83em;">{{ page.description }}</h6>
  {% endif %}
  {% if page.address %}
      <h6 class="m-0 mb-2" style="font-size: 0.83em;">{{ page.address }}</h6>
  {% endif %}
</div>

<!-- Introduction -->

<div style="display: flex; flex-wrap: wrap;">
    <div class="text-justify p-0">
        <div class="col-xs-12 col-sm-5 p-0 pt-2 pb-sm-2 pb-4 pl-sm-4 text-center" style="float: right;">
          <img class="profile-img img-responsive" src="{{ 'prof_pic.jpg' | prepend: '/assets/img/' | prepend: site.baseurl | prepend: site.url }}">
        </div>

        <p>
          I am a Staff Research Scientist at <a href="https://ai.google/" target="_blank">Google Research</a>.
        </p>
        <p>
          My research focuses on developing new methods for advancing agentic AI capabilities. A major application of this work is building holistic agents for safety and abuse detection that can effectively leverage multiple kinds of multimodal data, combining structured information, such as graphs, with unstructured information, such as text and images. 
        </p>
        <p>
          Earlier at Google, my work centered on improving AI Trust & Safety models and on building automated ML systems that enable domain experts to train specialized models without requiring AI expertise.
        </p>
        <p>
            Previously, I obtained my PhD from the <a href="http://www.ml.cmu.edu/" target="_blank">Machine Learning Department</a> at <a href="http://www.cmu.edu/" target="_blank">Carnegie Mellon University</a>, co-advised by <a href="http://www.cs.cmu.edu/~tom/" target="_blank">Tom Mitchell</a> and <a href="http://www.cs.cmu.edu/~bapoczos/" target="_blank">Barnabàs Pòczos</a>.
            My research focused on developing algorithms for semi-supervised learning, curriculum learning, multi-task learning, and graph-based learning.
            Alongside this, I applied machine learning to neuroscience, studying how the brain understands language and controls speech.
            Before CMU, I graduated with an <a href="https://www.cst.cam.ac.uk/admissions/acs" target="_blank">M.Phil. in Advanced Computer Science</a> from the <a href="https://www.cam.ac.uk/" target="_blank">University of Cambridge</a>.
            More broadly, I remain passionate about applying machine learning to health and the sciences.
        </p>
        <p>
         📚 🎨 🌍 Outside of research, you'll most likely find me lost in a fantasy novel, elbow-deep in some arts and crafts project I definitely underestimated, or exploring new places, whether that is a hidden trail near where I live or a city halfway across the world.
        </p>
    </div>
</div>

<!-- News -->
<div class="news mt-3 p-0">
  <h1 class="title mb-4 p-0">news</h1>
  {% assign news = site.news | reverse %}
  {% for item in news limit: site.news_limit %}
    {% assign item_year = item.date | date: "%Y" | plus: 0 %}
    {% if item_year >= 2025 %}
    <div class="row p-0">
      <div class="col-sm-2 p-0">
        <span class="badge light-green darken-1 font-weight-bold text-uppercase align-middle date ml-3">
          {{ item.date | date: "%b %-d, %Y" }}
        </span>
      </div>
      <div class="col-sm-10 mt-2 mt-sm-0 ml-3 ml-md-0 p-0 font-weight-light text">
        <p>{{ item.content | remove: '<p>' | remove: '</p>' | emojify }}</p>
      </div>
    </div>
    {% endif %}
  {% endfor %}
</div>
