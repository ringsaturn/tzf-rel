# [tzf](https://github.com/ringsaturn/tzf)'s preprocessed timezone data

## Update Data Steps

1. Download latest `timezones-with-oceans.geojson.zip` from https://github.com/evansiroky/timezone-boundary-builder/releases
2. Run:

   ```bash
   # Install cli tools
   make install
   # Produce new data
   make gen
   # stage
   git add combined-with-oceans.pb
   git add combined-with-oceans.reduce.pb
   # commit
   git commit -m "bump to xxx"
   git push
   ```

## Refer

- Probuf Data define: <https://github.com/ringsaturn/tzf/blob/main/pb/tzinfo.proto>
- Maintain tools
  - [`reducePolygon`](https://github.com/ringsaturn/tzf/tree/main/cmd/reducePolygon)
  - [`tzjson2pb`](https://github.com/ringsaturn/tzf/tree/main/cmd/tzjson2pb)
- To view data in GeoJSON format(which is more convenient to show on map), see <https://github.com/ringsaturn/tzf-server>
