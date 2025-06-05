# User Guides for wildlife watcher

- [User Guides for wildlife watcher](#user-guides-for-wildlife-watcher)
  - [1. Introduction](#1-introduction)
  - [2. Structure](#2-structure)
  - [3. Workflow](#3-workflow)
    - [Steps](#steps)
    - [Writing in markdown files](#writing-in-markdown-files)
      - [Jekyll and buttons for navigation](#jekyll-and-buttons-for-navigation)
    - [Automation](#automation)
    - [Conversion to PDF](#conversion-to-pdf)
  - [4. Manipulate images and buttons](#4-manipulate-images-and-buttons)

## 1. Introduction

This repository is the list of user guides.  
You will find them as `markdown` files but also downloadable `pdf`.  

We created a [website](https://wildlifeai.github.io/wildlife-watcher-user-guide/) accessible to everyone.  

## 2. Structure

Eveything deployed on the website is inside `docs/` folder.  

- Index page is `docs/index.md`
- Main pages are inside `docs/pages/md/`
- Other pages are inside `docs/misc/`
- Automated generated pdf files are inside `docs/pages/pdf/`
- Images are inside `docs/images/`

## 3. Workflow

### Steps

- You write some documentation or guide inside md files
- You add and commit the files `git add . && git commit -m 'testing nav buttons'`
- You pull from main to get the lastest updates `git pull origin main`
- You push your local repo to Github `git push origin main`
- GitHub page is converting markdown file to html file and updates the website
- A GitHub action is converting the markdown files as pdf files.  

### Writing in markdown files

#### Jekyll and buttons for navigation

We are using Jekyll for converting the `.md` into `.html` files.  
In the `index.md` we used css and html links to create buttons.  
We do point to an extension-free file (as `pages/md/wildlife_watcher_user_guide_package_container` instead of `pages/md/wildlife_watcher_user_guide_package_container.md`) to make sure the button will point to the html file instead of the markdown file.  

### Automation

Because of automation the order of files are made in the main page.  

Names of other pages are matching the name of the PDF we would like the user to have as  `wildlife_watcher_user_guide_` + `name of the guide`.  

The Table of Content is automatically generated while the markdown file is converted to a pdf.

### Conversion to PDF

Everytime someone is pucshing a new version of a markdown document **to the main branch**, a github action is creating a downloadable pdf version of that document.  
The code for that is in `.github/workflows/convert-to-pdf.yml`

During that Github action (current processing time 90s):  

- we install `pandoc` and `TeX`
- create a `LaTeX` file per markdown file
- convert to `PDF`
- push it to the repository in `docs/pages/pdf/`

## 4. Manipulate images and buttons

While using  

- `pandoc` for generating the LaTeX file
- and `img.shields.io` for the button image  

We noticed that `img.shields.io` was generated hidden `svgz` files (located at `/tmp/tex2pdf.-edcc70f24bfd13ac/59d024711638360f56ac84749e5c646f1e7ad99e.svgz`).  
`pandoc` was then trying to convert `svgz` files to `rsvg` file and couldn't.  

So we use `.pandoc/ignore-images.lua` (called in `.github/workflows/convert-to-pdf.yml`) to avoid that conversion.  
