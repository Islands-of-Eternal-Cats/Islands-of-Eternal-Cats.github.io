# Islands-of-Eternal-Cats.github.io


```
version: "3.8"

services:
  jekyll:
    image: jekyll/jekyll:latest
    container_name: jekyll_blog
    ports:
      - "4000:4000"
    volumes:
      - ./:/srv/jekyll:Z
    command: >
      sh -c "jekyll serve --watch --force_polling --trace"
    environment:
      - JEKYLL_ENV=development
```

docker-compose run jekyll jekyll new --force .
