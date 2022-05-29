install:
	go install github.com/ringsaturn/tzf/cmd/reducePolygon
	go install github.com/ringsaturn/tzf/cmd/tzjson2pb

gen:
	go generate ./..
