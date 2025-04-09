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
          I am a Senior Research Scientist at <a href="https://ai.google/" target="_blank">Google Research</a>  working on core machine learning methodology—primarily around vision-language models, data mining, active learning, and safety—with applications in various areas including computer vision and natural language processing.
        </p>
        <p>
          My current research focuses on two key problems:
        </p>
        <ol style="padding-inline-start: 30px;">
          <li class="pb-2">
            <b> Enabling domain experts to effectively build models without requiring AI expertise. </b>
            Training AI models for specialized domains typically requires curating large datasets, which is expensive, time-consuming and usually demands AI expertise. My research removes that barrier by automating the process of mining the right kinds of data and iteratively improving the model, and spans multiple areas including modeling, active learning and distillation.
          </li>
          <li> 
            <b> Improving AI Trust & Safety models to make the internet safer. </b> As powerful LLMs become more accessible, their potential for malicious use (like generating online abuse/threats) grows. My research flips this around, leveraging LLM capabilities to detect and counteract malicious activities. This involves fundamental research aimed at expanding the reasoning capabilities of LLMs over multimodal data, to better identify sophisticated harmful content and malicious behaviors.
          </li>
        </ol>

        <p>
        If either or both of these problems excite you, feel free to reach out!
        </p>
        <p>
            Previously, I obtained my PhD from the <a href="http://www.ml.cmu.edu/" target="_blank">Machine Learning Department</a> at <a href="http://www.cmu.edu/" target="_blank">Carnegie Mellon University</a>, co-advised by <a href="http://www.cs.cmu.edu/~tom/" target="_blank">Tom Mitchell</a> and <a href="http://www.cs.cmu.edu/~bapoczos/" target="_blank">Barnabàs Pòczos</a>.
            My PhD research focused on developing algorithms for machine learning, mainly focused on semi-supervised learning, curriculum learning, multitask learning, and graph-based problems.
            I am also passionate about applying machine learning methods in neuroscience, in order to study how the brain understands language and controls speech.
            Previously, I did some research in Computer Vision, with the goal of detecting and tracking objects in videos.
        </p>
    </div>
</div>

<div class="col text-justify p-0">
    <p>
        Before I joined CMU, I graduated with an <a href="https://www.cst.cam.ac.uk/admissions/acs" target="_blank">M.Phil. in Advanced Computer Science</a>
        from the <a href="https://www.cam.ac.uk/" target="_blank">University of Cambridge</a>, UK.
        In my Master's thesis I used Machine Learning methods to detect and align chromosomes in microscope images,
        advised by <a href="https://www.cl.cam.ac.uk/~pl219/" target="_blank">Pietro Lió</a>.
    </p>
</div>

<!-- News -->
<div class="news mt-3 p-0">
  <h1 class="title mb-4 p-0">news</h1>
  {% assign news = site.news | reverse %}
  {% for item in news limit: site.news_limit %}
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
  {% endfor %}
</div>
