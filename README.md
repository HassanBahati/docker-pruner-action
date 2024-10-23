# Docker Prunner Action

GitHub Action that automatically prunes unused Docker containers, networks, images, and volumes, and stops/removes old Docker containers.

## Inputs

- `container-name`: **Required**. The name of the Docker container to stop and remove.
- `prune`: Optional. Set to true to prune Docker system. Default is `true`.

## Example Workflow

```yaml
name: Docker Maintenance

on:
  push:
    branches:
      - main

jobs:
  docker-maintenance:
    runs-on: ubuntu-latest
    steps:
      - name: Checkout code
        uses: actions/checkout@v3

      - name: Run Docker Prunner Action
        uses: HassanBahati/docker-prunner-action@v1
        with:
          container-name: app-container
          prune: true
```

## License

This project is licensed under the [MIT License](LICENSE).