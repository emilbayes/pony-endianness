primitive LittleEndian
  fun u8 (v: Array[U8]): U8 ? =>
    v.read_u8(0)?

  fun u16 (v: Array[U8]): U16 ? =>
    ifdef littleendian then
      v.read_u16(0)?
    else
      v.read_u16(0)?.bswap()
    end

  fun u32 (v: Array[U8]): U32 ? =>
    ifdef littleendian then
      v.read_u32(0)?
    else
      v.read_u32(0)?.bswap()
    end

  fun u64 (v: Array[U8]): U64 ? =>
    ifdef littleendian then
      v.read_u64(0)?
    else
      v.read_u64(0)?.bswap()
    end

  fun u128 (v: Array[U8]): U128 ? =>
    ifdef littleendian then
      v.read_u128(0)?
    else
      v.read_u128(0)?.bswap()
    end

  fun i8 (v: Array[U8]): I8 ? =>
    v.read_u8(0)?.i8()

  fun i16 (v: Array[U8]): I16 ? =>
    ifdef littleendian then
      v.read_u16(0)?.i16()
    else
      v.read_u16(0)?.i16().bswap()
    end

  fun i32 (v: Array[U8]): I32 ? =>
    ifdef littleendian then
      v.read_u32(0)?.i32()
    else
      v.read_u32(0)?.i32().bswap()
    end

  fun i64 (v: Array[U8]): I64 ? =>
    ifdef littleendian then
      v.read_u64(0)?.i64()
    else
      v.read_u64(0)?.i64().bswap()
    end

  fun i128 (v: Array[U8]): I128 ? =>
    ifdef littleendian then
      v.read_u128(0)?.i128()
    else
      v.read_u128(0)?.i128().bswap()
    end
