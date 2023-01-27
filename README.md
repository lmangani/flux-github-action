# <img src="https://user-images.githubusercontent.com/1423657/162720189-976cc0cc-7511-4278-a942-9c4e7cc9148a.png" width=250 />

# Flux GitHub Action

This action sets up a [Fluxpipe](https://github.com/metrico/fluXpipe) runner to execute [Flux](https://github.com/influxdata/flux) scripts.

# Usage

```yaml
steps:
  - name: Flux in GitHub Actions
    uses: lmangani/flux-github-action@main
```

## Example
```yaml
jobs:
  fluxpipe:
    runs-on: ubuntu-latest
    name: Run a Flux Script
    steps:
      - name: Flux Run
        id: flux
        uses: lmangani/flux-github-action@main
        with:
          flux-script: 'import "array" import "runtime" array.from(rows: [{version: runtime.version()}])'
      - name: Flux Result
        run: echo "${{ steps.flux.outputs.result }}"
```

# License
This project released under the [MIT License](LICENSE)
