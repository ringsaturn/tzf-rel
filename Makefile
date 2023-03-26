download:
	rm *.zip
	rm *.json
	wget https://github.com/evansiroky/timezone-boundary-builder/releases/download/${TIMEZONE_BOUNDARY_VERSION}/timezones-with-oceans.geojson.zip
	unzip timezones-with-oceans.geojson.zip

install:
	go install github.com/ringsaturn/tzf/cmd/geojson2tzpb@latest
	go install github.com/ringsaturn/tzf/cmd/reducetzpb@latest
	go install github.com/ringsaturn/tzf/cmd/compresstzpb@latest
	go install github.com/ringsaturn/tzf/cmd/preindextzpb@latest

gen: install download
	geojson2tzpb combined-with-oceans.json | xargs reducetzpb | xargs compresstzpb
	preindextzpb combined-with-oceans.reduce.pb
	git add combined-with-oceans.pb
	git add combined-with-oceans.reduce.pb
	git add combined-with-oceans.reduce.compress.pb
	git add combined-with-oceans.reduce.preindex.pb
	git commit -m "bump to ${TIMEZONE_BOUNDARY_VERSION}"
