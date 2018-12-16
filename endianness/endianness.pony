"""
# Endianness Package

Easily read different Integer types from an `Array[U8]` as either big or little
endian encoding.

Extracted from the core "buffered" package

## Example program

```pony
use "endianness"

actor Main
  new create (env: Env) =>
    try
      env.out.print(BigEndian.u16([0x80; 0xff])?.string()) // 33023
      env.out.print(LittleEndian.u16([0x80; 0xff])?.string()) // 65408
    end
"""
