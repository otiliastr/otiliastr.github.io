---
layout: page
title: projects
nav: projects
nav_exclude: true
permalink: /projects/
description: some of the projects I have worked on
---

<div id="projects" class="row mt-2 pt-3" style="overflow: visible !important;">
  {% assign sorted_projects = site.projects | sort: "importance" | reverse %}
  {% for project in sorted_projects %}
    <div class="project-card">
      {% if project.redirect %}
        <a href="{{ project.redirect }}" target="_blank">
      {% else %}
        <a href="{{ project.url | prepend: site.baseurl | prepend: site.url }}">
      {% endif %}
        <div class="card">
          <img class="card-img-top" src="{{ project.img | prepend: site.baseurl | prepend: site.url }}" alt="project thumbnail">
          <div class="card-body">
            <h5 class="card-title text-lowercase">{{ project.title }}</h5>
            <p class="card-text">{{ project.description }}</p>
            <div class="row ml-1 mr-1 p-0">
              {% if project.wordpress %}
                <div class="wordpress-icon" data-toggle="tooltip" title="Blog Post">
                  <div class="icon">
                    <a href="{{ project.wordpress }}" target="_blank"><i class="fab fa-wordpress-simple wp-icon"></i></a>
                  </div>
                </div>
              {% endif %}
              {% if project.github %}
                {% assign github_id = project.title | append: project.github | replace: '/', '-' | replace: ' ', '-' %}
                <div class="github-icon">
                  <div class="icon" data-toggle="tooltip" title="Code Repository">
                    <a href="https://github.com/{{ project.github }}" target="_blank"><i class="fab fa-github gh-icon"></i></a>
                  </div>
                </div>
              {% endif %}
            </div>
          </div>
        </div>
      </a>
    </div>
  {% endfor %}
</div>
