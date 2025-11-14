## Just a personal homepage — for my research projects/ideas and a few random thoughts.

A while ago, I found a nice tutorial about Go for making a static website, and that was easy to follow. So I decided to use Go to learn a bit about web development. This site is built entirely with Go: a pure Go backend and GoHTML for the frontend, and not much in style. I prefer keeping things simple, so just a place I can store my thoughts. The site is deployed on Fly.io (still haven't paid anything for hosting so far), which integrates smoothly with GitHub for automatic updates whenever I push new changes. MathJax is used for displaying equations, and Google Analytics helps track site activity.

### A few things

#### Why Go?

I wanted something fast and easy to work with. Go’s standard library already has everything I need for a small website. net/http handles the routes, html/template renders the pages, and it all compiles into a single binary, which makes deployment super simple.

#### Deploying it

The workflow turned out to be really smooth. I write my markdown posts locally, push to GitHub, and Fly.io automatically redeploys. The whole thing takes about a minute. Just git push and the site updates. The free tier on Fly.io is more than enough for a personal blog.

#### Keeping it minimal

I don't know anything about JS, and advanced styling in CSS, and honestly, I don’t need them for what I’m doing. The pages load quickly because there’s barely anything to load!