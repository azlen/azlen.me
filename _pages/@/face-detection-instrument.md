---
layout: default
title: "Face Detection Instrument"
context: "Project"
description: "Sonifying facial movements and expressions"
created: 2024-01-15
---

![](/images/face-detection-instrument.png)

A musical instrument made that I made as a project for a university class which uses landmarks from a face detection algorithm to play sound. The face detection runs in Python which is then piped into [Supercollider](https://supercollider.github.io) to create sound. Also created a visual interface and sound visualization in Processing.

Facial expression is an interesting form of human-computer interaction. There were many decisions to be made about how to map facial movements to the sound being generated. Thus the project was also very interesting from a design perspective. I ended up making some decisions due to certain problems and inaccuracies with the face detection algorithm, for example connecting pitch to head rotation as it was more reliable to give an accurate number.

It was very funny watching people interact with the instrument. Their face glazes over for a second and then begins to cycle through a series of exaggerated expressions as they figure out the _interaction space_ of which movements correspond to which attributes of the sound.