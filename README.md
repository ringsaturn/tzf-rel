# [tzf](https://github.com/ringsaturn/tzf)'s preprocessed timezone data

## Update Data Steps

```bash
export TIMEZONE_BOUNDARY_VERSION=2023b
make gen
# stage
git add combined-with-oceans.pb
git add combined-with-oceans.reduce.pb
git add combined-with-oceans.reduce.compress.pb
git add combined-with-oceans.reduce.preindex.pb
# commit
git commit -m "bump to xxx"
git push
```

## Refer

- Protocol Buffers define:
  <https://github.com/ringsaturn/tzf/blob/main/pb/tzinfo.proto>
- Maintain tools
  - [`geojson2tzpb`](https://github.com/ringsaturn/tzf/tree/main/cmd/geojson2tzpb)
  - [`reducetzpb`](https://github.com/ringsaturn/tzf/tree/main/cmd/reducetzpb)
  - [`compresstzpb`](https://github.com/ringsaturn/tzf/tree/main/cmd/compresstzpb)
  - [`preindextzpb`](https://github.com/ringsaturn/tzf/tree/main/cmd/preindextzpb)
- To view data in GeoJSON format(which is more convenient to show on map), see
  <https://github.com/ringsaturn/tzf-server>

Usage:

- Go: <https://github.com/ringsaturn/tzf>
- Rust: <https://github.com/ringsaturn/tzf-rs>
