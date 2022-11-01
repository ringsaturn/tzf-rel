download:
	rm *.zip
	rm *.json
	wget https://github.com/evansiroky/timezone-boundary-builder/releases/latest/download/timezones-with-oceans.geojson.zip
	unzip timezones-with-oceans.geojson.zip

install:
	go install github.com/ringsaturn/tzf/cmd/geojson2tzpb@latest
	go install github.com/ringsaturn/tzf/cmd/reducetzpb@latest
	go install github.com/ringsaturn/tzf/cmd/compresstzpb@latest

gen: install download
	geojson2tzpb combined-with-oceans.json | xargs reducetzpb | xargs compresstzpb
