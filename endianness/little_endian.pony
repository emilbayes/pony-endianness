primitive LittleEndian
  fun u8 (v: Array[U8], offset: USize = 0): U8 ? =>
    v.read_u8(offset)?

  fun u16 (v: Array[U8], offset: USize = 0): U16 ? =>
    ifdef littleendian then
      v.read_u16(offset)?
    else
      v.read_u16(offset)?.bswap()
    end

  fun u32 (v: Array[U8], offset: USize = 0): U32 ? =>
    ifdef littleendian then
      v.read_u32(offset)?
    else
      v.read_u32(offset)?.bswap()
    end

  fun u64 (v: Array[U8], offset: USize = 0): U64 ? =>
    ifdef littleendian then
      v.read_u64(offset)?
    else
      v.read_u64(offset)?.bswap()
    end

  fun u128 (v: Array[U8], offset: USize = 0): U128 ? =>
    ifdef littleendian then
      v.read_u128(offset)?
    else
      v.read_u128(offset)?.bswap()
    end

  fun i8 (v: Array[U8], offset: USize = 0): I8 ? =>
    v.read_u8(offset)?.i8()

  fun i16 (v: Array[U8], offset: USize = 0): I16 ? =>
    ifdef littleendian then
      v.read_u16(offset)?.i16()
    else
      v.read_u16(offset)?.i16().bswap()
    end

  fun i32 (v: Array[U8], offset: USize = 0): I32 ? =>
    ifdef littleendian then
      v.read_u32(offset)?.i32()
    else
      v.read_u32(offset)?.i32().bswap()
    end

  fun i64 (v: Array[U8], offset: USize = 0): I64 ? =>
    ifdef littleendian then
      v.read_u64(offset)?.i64()
    else
      v.read_u64(offset)?.i64().bswap()
    end

  fun i128 (v: Array[U8], offset: USize = 0): I128 ? =>
    ifdef littleendian then
      v.read_u128(offset)?.i128()
    else
      v.read_u128(offset)?.i128().bswap()
    end
