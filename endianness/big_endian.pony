primitive BigEndian
  fun u8 (v: Array[U8] box, offset: USize = 0): U8 ? =>
    """
    Read a U8 in BE (network) order from `v` starting at `offset` (default 0),
    consuming 1 byte.
    May error if not enough bytes are available from `offset`
    """
    v.read_u8(offset)?

  fun u16 (v: Array[U8] box, offset: USize = 0): U16 ? =>
    """
    Read a U16 in BE (network) order from `v` starting at `offset` (default 0),
    consuming 2 bytes.
    May error if not enough bytes are available from `offset`
    """
    ifdef bigendian then
      v.read_u16(offset)?
    else
      v.read_u16(offset)?.bswap()
    end

  fun u32 (v: Array[U8] box, offset: USize = 0): U32 ? =>
    """
    Read a U32 in BE (network) order from `v` starting at `offset` (default 0),
    consuming 4 bytes.
    May error if not enough bytes are available from `offset`
    """
    ifdef bigendian then
      v.read_u32(offset)?
    else
      v.read_u32(offset)?.bswap()
    end

  fun u64 (v: Array[U8] box, offset: USize = 0): U64 ? =>
    """
    Read a U64 in BE (network) order from `v` starting at `offset` (default 0),
    consuming 8 bytes.
    May error if not enough bytes are available from `offset`
    """
    ifdef bigendian then
      v.read_u64(offset)?
    else
      v.read_u64(offset)?.bswap()
    end

  fun u128 (v: Array[U8] box, offset: USize = 0): U128 ? =>
    """
    Read a U128 in BE (network) order from `v` starting at `offset` (default 0),
    consuming 16 bytes.
    May error if not enough bytes are available from `offset`
    """
    ifdef bigendian then
      v.read_u128(offset)?
    else
      v.read_u128(offset)?.bswap()
    end

  fun i8 (v: Array[U8] box, offset: USize = 0): I8 ? =>
    """
    Read a I8 in BE (network) order from `v` starting at `offset` (default 0),
    consuming 1 byte.
    May error if not enough bytes are available from `offset`
    """
    v.read_u8(offset)?.i8()

  fun i16 (v: Array[U8] box, offset: USize = 0): I16 ? =>
    """
    Read a I16 in BE (network) order from `v` starting at `offset` (default 0),
    consuming 2 bytes.
    May error if not enough bytes are available from `offset`
    """
    ifdef bigendian then
      v.read_u16(offset)?.i16()
    else
      v.read_u16(offset)?.i16().bswap()
    end

  fun i32 (v: Array[U8] box, offset: USize = 0): I32 ? =>
    """
    Read a I32 in BE (network) order from `v` starting at `offset` (default 0),
    consuming 4 bytes.
    May error if not enough bytes are available from `offset`
    """
    ifdef bigendian then
      v.read_u32(offset)?.i32()
    else
      v.read_u32(offset)?.i32().bswap()
    end

  fun i64 (v: Array[U8] box, offset: USize = 0): I64 ? =>
    """
    Read a I64 in BE (network) order from `v` starting at `offset` (default 0),
    consuming 8 bytes.
    May error if not enough bytes are available from `offset`
    """
    ifdef bigendian then
      v.read_u64(offset)?.i64()
    else
      v.read_u64(offset)?.i64().bswap()
    end

  fun i128 (v: Array[U8] box, offset: USize = 0): I128 ? =>
    """
    Read a I128 in BE (network) order from `v` starting at `offset` (default 0),
    consuming 16 bytes.
    May error if not enough bytes are available from `offset`
    """
    ifdef bigendian then
      v.read_u128(offset)?.i128()
    else
      v.read_u128(offset)?.i128().bswap()
    end
