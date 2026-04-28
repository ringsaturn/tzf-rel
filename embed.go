package tzfrel

import (
	_ "embed"
)

// Deprecated: Please see https://github.com/ringsaturn/tzf for latest timezone data and tools.
//
//go:embed combined-with-oceans.bin
var FullData []byte

// Deprecated: Please see https://github.com/ringsaturn/tzf for latest timezone data and tools.
//
//go:embed combined-with-oceans.reduce.bin
var LiteData []byte

// Deprecated: Please see https://github.com/ringsaturn/tzf for latest timezone data and tools.
//
//go:embed combined-with-oceans.reduce.compress.bin
var LiteCompressData []byte

// Deprecated: Please see https://github.com/ringsaturn/tzf for latest timezone data and tools.
//
//go:embed combined-with-oceans.reduce.preindex.bin
var PreindexData []byte
