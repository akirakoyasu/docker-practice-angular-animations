# update submodule
```
git submodule update --init
```

# Docker
run ng serve in container
```
docker-compose up -d
```

show ng serve log
```
docker-compose logs -f angular
```

run ng commands
```
docker-compose run --rm angular ng g class app.animations.ts
```

run bash in container
```
docker-compose exec angular bash -l
```

destroy container
```
docker-compose down
```

---

# angular-cli
set polling watch in practice-angular-animations/.angular-cli.json

```
  "defaults": {
    "poll": 1000
  }
```
