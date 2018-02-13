# blog

- **Publish**: [blog.m4kvn.com](https://blog.m4kvn.com)
- **Theme**: [dream](https://github.com/g1eny0ung/hugo-theme-dream)

## How to generate new post

You cat generate it by:

```
hugo new post/articleTitle.md
```

By default, the new md file will contain:

```
---
title: {{ replace .TranslationBaseName "-" " " | title }}
date: {{ .Date }} // Will be replaced with your current time
lastmod: {{ .Date }}
author: Author Name
cover: /img/cover.jpg
categories: ["category1"]
tags: ["tag1", "tag2"]
draft: true
---

Cut out summary from your post content here.

<!--more-->

The remaining content of your post.
```

**I recommend you go to Pexels to select your article cover image.(Small size 640 x 426)**

When your finish your article, remove draft: true and run hugo to publish your site.

If your want to have a preview in editing, run:

```
hugo server -D --watch
```

in your blog folder, the -D represent to build draft post.

## How to setup environment

```
git clone git@github.com:m4kvn/blog.git
cd blog
git submodule update --init --recursive
```
