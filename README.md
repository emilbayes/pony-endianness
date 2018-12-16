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

#### `u8(Array[U8]): U8 ?`

#### `u16(Array[U8]): U16 ?`

#### `u32(Array[U8]): U32 ?`

#### `u64(Array[U8]): U64 ?`

#### `u128(Array[U8]): U128 ?`

#### `i8(Array[U8]): I8 ?`

#### `i16(Array[U8]): I16 ?`

#### `i32(Array[U8]): I32 ?`

#### `i64(Array[U8]): I64 ?`

#### `i128(Array[U8]): I128 ?`

### Primitive `BigEndian`

#### `u8(Array[U8]): U8 ?`

#### `u16(Array[U8]): U16 ?`

#### `u32(Array[U8]): U32 ?`

#### `u64(Array[U8]): U64 ?`

#### `u128(Array[U8]): U128 ?`

#### `i8(Array[U8]): I8 ?`

#### `i16(Array[U8]): I16 ?`

#### `i32(Array[U8]): I32 ?`

#### `i64(Array[U8]): I64 ?`

#### `i128(Array[U8]): I128 ?`

## Install

```sh
stable add github emilbayes/endianness
```

## License

[ISC](LICENSE)
