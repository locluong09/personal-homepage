## For my research projects/ideas and a few random thoughts.
This is to document my past research projects and a few random thoughts. Some research are already published in peer-reviewed journals, and I've modified the content to comply with the copyrights. Thoughts simply are my opinions/reflections on some random stuff along the way of the thinking and pondering.


### A few things

#### About this site

This site is built entirely with Go: a Go backend and GoHTML for the frontend, and not much in style because I prefer keeping things simple. The site is deployed on Fly.io (still haven't paid anything for hosting so far). The free tier on Fly.io is more than enough for a personal homepage as well as for blogging (random thoughts).

#### Why Go?

A while ago, I found a nice tutorial about Go for making a static website, and that was easy to follow. So I decided to use Go to learn a bit about web development. I also wanted something fast and easy to work with. And Go’s standard library already has things I need for a small website.

#### Deploying it

The workflow turned out to be really smooth. I write my markdown posts locally, push to GitHub, and Fly.io automatically deploys them. I just need to push new post to this repo, Fly will update the site accordingly.