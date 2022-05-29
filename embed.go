package tzfrel

import (
	_ "embed"
)

//go:embed combined-with-oceans.pb
var FullData []byte

//go:embed combined-with-oceans.reduce.pb
var LiteData []byte
