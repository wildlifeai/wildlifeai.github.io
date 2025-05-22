# User Guides for wildlife watcher

## Introduction

This repository is the list of user guides.  
You will find them as `markdown` files but also downloadable `pdf`.  

We created a [website](https://wildlifeai.github.io/wildlife-watcher-user-guide/) accessible to everyone.  

## How to write documentation

Eveything is inside `docs/` folder.  

### Structure

- Main page is `index.md`
- Other pages are inside `docs/pages/` folder
- Images are inside `docs/images/` folder

### Workflow

Everytime someone is pucshing a new version of a markdown document, a github action is creating a downloadable pdf version of that document. 
The code for that is in `.github/workflows/convert-to-pdf.yml`

#### Conversion to PDF

During that Github action:  

- we install `pandoc` and `TeX`
- create a `LaTeX` file per markdown file
- convert to `PDF`
- push it to the repository
