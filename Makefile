install:
	go install github.com/ringsaturn/tzf/cmd/geojson2tzpb@latest
	go install github.com/ringsaturn/tzf/cmd/reducetzpb@latest
	go install github.com/ringsaturn/tzf/cmd/compresstzpb@latest

gen:
	geojson2tzpb combined-with-oceans.json | xargs reducetzpb | xargs compresstzpb
