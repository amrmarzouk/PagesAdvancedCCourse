<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />

    <title>reveal-md</title>
    <link rel="shortcut icon" href="./favicon.ico" />
    <link rel="stylesheet" href="./dist/reset.css" />
    <link rel="stylesheet" href="./dist/reveal.css" />
    <link rel="stylesheet" href="./dist/theme/black.css" id="theme" />
    <link rel="stylesheet" href="./css/highlight/base16/zenburn.css" />
  </head>
  <body>
    <div class="reveal">
      <div class="slides">
        <section data-markdown data-separator="\r?\n---\r?\n" data-separator-vertical="\r?\n----\r?\n">
          <textarea data-template>
# Welcome to MSE152: Computing Fundamentals for Mechatronics

This site contains the course materials for **MSE152**, including lectures, labs, and additional resources.

## Navigation
- [Syllabus](./syllabus.md)

## Lectures
- [Git and Versioning](./lectures/git-and-versioning.html)
- [Build Systems](./lectures/build-systems.md)
- [C Programming Review](./lectures/c-programming-review.md)
- [Unit and Integration Testing](./lectures/unit-integration-testing.md)
- [Pointers in C - Part 1](./lectures/pointers-part1.md)
- [Pointers in C - Part 2](./lectures/pointers-part2.md)
- [Linked Lists](./lectures/linked-lists.md)
- [Stacks and Queues](./lectures/stacks-and-queues.md)
- [Memory Management](./lectures/memory-management.md)
- [Device Drivers - Part 1](./lectures/device-drivers-part1.md)
- [Device Drivers - Part 2](./lectures/device-drivers-part2.md)
- [Real-World Case Studies](./lectures/real-world-case-studies.md)
- [Final Project Presentation](./lectures/final-project.md)

## Labs
- [Build Automation Lab](./labs/build-automation-lab.md)
- [Git Lab](./labs/git-lab.md)
          </textarea>
        </section>
      </div>
    </div>

    <script src="./dist/reveal.js"></script>
    <script src="./plugin/markdown/markdown.js"></script>
    <script src="./plugin/highlight/highlight.js"></script>
    <script src="./plugin/zoom/zoom.js"></script>
    <script src="./plugin/notes/notes.js"></script>
    <script src="./plugin/math/math.js"></script>

    <script>
      // default options to init reveal.js
      var defaultOptions = {
        controls: true,
        progress: true,
        history: true,
        center: true,
        transition: 'default', // none/fade/slide/convex/concave/zoom
        slideNumber: true,
        highlight: {
          highlightOnLoad: false
        },
        plugins: [
          RevealMarkdown,
          RevealHighlight,
          RevealZoom,
          RevealNotes,
          RevealMath
        ]
      };

      // options from URL query string
      var queryOptions = Reveal().getQueryHash() || {};

      var options = extend(defaultOptions, queryOptions);

      Reveal.initialize(options);
    </script>
  </body>
</html>