# `endianness`

> Easily read different Integer types from an `Array[U8]` as either big or little endian encoding.

Extracted from the core "buffered" package

## Usage

```pony
use "endianness"

actor Main
  new create (env: Env) =>
    try
      env.out.print(BigEndian.u16([0x80; 0xff])?.string()) // 33023
      env.out.print(LittleEndian.u16([0x80; 0xff])?.string()) // 65408
    end
```

## API

### Primitive `LittleEndian`

#### `u8(Array[U8] box, offset: USize = 0): U8 ?`
  Read a U8 in LE order from `v` starting at `offset` (default 0),
  consuming 1 byte.
  May error if not enough bytes are available from `offset`
#### `u16(Array[U8] box, offset: USize = 0): U16 ?`
  Read a U16 in LE order from `v` starting at `offset` (default 0),
  consuming 2 bytes.
  May error if not enough bytes are available from `offset`
#### `u32(Array[U8] box, offset: USize = 0): U32 ?`
  Read a U32 in LE order from `v` starting at `offset` (default 0),
  consuming 4 bytes.
  May error if not enough bytes are available from `offset`
#### `u64(Array[U8] box, offset: USize = 0): U64 ?`
  Read a U64 in LE order from `v` starting at `offset` (default 0),
  consuming 8 bytes.
  May error if not enough bytes are available from `offset`
#### `u128(Array[U8] box, offset: USize = 0): U128 ?`
  Read a U128 in LE order from `v` starting at `offset` (default 0),
  consuming 16 bytes.
  May error if not enough bytes are available from `offset`
#### `i8(Array[U8] box, offset: USize = 0): I8 ?`
  Read a I8 in LE order from `v` starting at `offset` (default 0),
  consuming 1 byte.
  May error if not enough bytes are available from `offset`
#### `i16(Array[U8] box, offset: USize = 0): I16 ?`
  Read a I16 in LE order from `v` starting at `offset` (default 0),
  consuming 2 bytes.
  May error if not enough bytes are available from `offset`
#### `i32(Array[U8] box, offset: USize = 0): I32 ?`
  Read a I32 in LE order from `v` starting at `offset` (default 0),
  consuming 4 bytes.
  May error if not enough bytes are available from `offset`
#### `i64(Array[U8] box, offset: USize = 0): I64 ?`
  Read a I64 in LE order from `v` starting at `offset` (default 0),
  consuming 8 bytes.
  May error if not enough bytes are available from `offset`
#### `i128(Array[U8] box, offset: USize = 0): I128 ?`
  Read a I128 in LE order from `v` starting at `offset` (default 0),
  consuming 16 bytes.
  May error if not enough bytes are available from `offset`

### Primitive `BigEndian`

#### `u8(Array[U8] box, offset: USize = 0): U8 ?`
  Read a U8 in BE (network) order from `v` starting at `offset` (default 0),
  consuming 1 byte.
  May error if not enough bytes are available from `offset`
#### `u16(Array[U8] box, offset: USize = 0): U16 ?`
  Read a U16 in BE (network) order from `v` starting at `offset` (default 0),
  consuming 2 bytes.
  May error if not enough bytes are available from `offset`
#### `u32(Array[U8] box, offset: USize = 0): U32 ?`
  Read a U32 in BE (network) order from `v` starting at `offset` (default 0),
  consuming 4 bytes.
  May error if not enough bytes are available from `offset`
#### `u64(Array[U8] box, offset: USize = 0): U64 ?`
  Read a U64 in BE (network) order from `v` starting at `offset` (default 0),
  consuming 8 bytes.
  May error if not enough bytes are available from `offset`
#### `u128(Array[U8] box, offset: USize = 0): U128 ?`
  Read a U128 in BE (network) order from `v` starting at `offset` (default 0),
  consuming 16 bytes.
  May error if not enough bytes are available from `offset`
#### `i8(Array[U8] box, offset: USize = 0): I8 ?`
  Read a I8 in BE (network) order from `v` starting at `offset` (default 0),
  consuming 1 byte.
  May error if not enough bytes are available from `offset`
#### `i16(Array[U8] box, offset: USize = 0): I16 ?`
  Read a I16 in BE (network) order from `v` starting at `offset` (default 0),
  consuming 2 bytes.
  May error if not enough bytes are available from `offset`
#### `i32(Array[U8] box, offset: USize = 0): I32 ?`
  Read a I32 in BE (network) order from `v` starting at `offset` (default 0),
  consuming 4 bytes.
  May error if not enough bytes are available from `offset`
#### `i64(Array[U8] box, offset: USize = 0): I64 ?`
  Read a I64 in BE (network) order from `v` starting at `offset` (default 0),
  consuming 8 bytes.
  May error if not enough bytes are available from `offset`
#### `i128(Array[U8] box, offset: USize = 0): I128 ?`
  Read a I128 in BE (network) order from `v` starting at `offset` (default 0),
  consuming 16 bytes.
  May error if not enough bytes are available from `offset`

## Install

```sh
stable add github emilbayes/endianness
```

## License

[ISC](LICENSE)
