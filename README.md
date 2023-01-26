# <img src="https://user-images.githubusercontent.com/1423657/162720189-976cc0cc-7511-4278-a942-9c4e7cc9148a.png" width=250 />

# Flux GitHub Action

This action sets up a [Fluxpipe](https://github.com/metrico/fluXpipe) instance to execute [Flux](https://github.com/influxdata/flux) scripts.

# Usage

Fluxpipe offers an _InfluxDB-like_ API on port `8086`

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
    steps:
    - uses: lmangani/flux-github-action@main
    - env:
        KEY_NAME: fluxpipe
      run: |
        curl -XPOST localhost:8086/api/v2/query -sS \
        -H 'Accept:application/csv' \
        -H 'Content-type:application/vnd.flux' \
        --data-binary @- << EOFLUX
              import "array"
              import "runtime"
              array.from(rows: [{version: runtime.version() }])
        EOFLUX
```

# License
This project released under the [MIT License](LICENSE)
