install:
	go install github.com/ringsaturn/tzf/cmd/geojson2tzpb@v0.8.0
	go install github.com/ringsaturn/tzf/cmd/reducetzpb@v0.8.0
	go install github.com/ringsaturn/tzf/cmd/compresstzpb@v0.8.0

gen:
	geojson2tzpb combined-with-oceans.json | xargs reducetzpb | xargs compresstzpb
