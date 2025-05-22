# User Guides for wildlife watcher

## Introduction

This repository is the list of user guides.  
You will find them as `markdown` files but also downloadable `pdf`.  

We created a [website](https://wildlifeai.github.io/wildlife-watcher-user-guide/) accessible to everyone.  

## How to write documentation

Eveything is inside `docs/` folder.  

### Structure

- Main page is `index.md`
- Other pages are inside `docs/pages/md/` folder
- Images are inside `docs/images/` folder

### Workflow

Everytime someone is pucshing a new version of a markdown document, a github action is creating a downloadable pdf version of that document. 
The code for that is in `.github/workflows/convert-to-pdf.yml`

#### Conversion to PDF

During that Github action (current processing time 90s):  

- we install `pandoc` and `TeX`
- create a `LaTeX` file per markdown file
- convert to `PDF`
- push it to the repository in `docs/pages/pdf/`

#### Manipulate images and buttons

While using  

- `pandoc` for generating the LaTeX file
- and `img.shields.io` for the button image 

We noticed that `img.shields.io` was generated hidden `svgz` files (located at `/tmp/tex2pdf.-edcc70f24bfd13ac/59d024711638360f56ac84749e5c646f1e7ad99e.svgz`).  
`pandoc` was then trying to convert `svgz` files to `rsvg` file and couldn't.  

So we use `.pandoc/ignore-images.lua` (called in `.github/workflows/convert-to-pdf.yml`) to avoid that conversion.  
