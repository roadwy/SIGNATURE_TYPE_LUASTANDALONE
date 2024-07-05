local L0_0
L0_0 = peattributes
L0_0 = L0_0.lastscn_writable
if L0_0 == false then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = peattributes
L0_0 = L0_0.lastscn_falign
if L0_0 == false then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = peattributes
L0_0 = L0_0.lastscn_vfalign
if L0_0 == false then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = peattributes
L0_0 = L0_0.lastscn_eqsizes
if L0_0 == false then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.bitand
L0_0 = L0_0(pesecs[1].Characteristics, 2147483648)
if L0_0 == 0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = {
  {
    sig = "\232\000\000\000\000]\129\237\005\016@\000\141\181'\023@\000\141\1890\023@\000\185\b\000\000\000\144\243\164",
    xray_type = 0,
    bytes_to_decrypt = 0
  },
  {
    sig = "\232'\000\000\000\139\133F\023@\0001\133\213\023@\000\235&\144\144\144\232\017\000\000\000\139\133J\023@",
    xray_type = 0,
    bytes_to_decrypt = 0
  },
  {
    sig = "\232\v\000\000\000\139d$\b\232Y\000\000\000\235B3\219d\2553d\137#R\015\001L$\254Z\131",
    xray_type = 1,
    bytes_to_decrypt = 0
  },
  {
    sig = "\232\v\000\000\000\139d$\b\232Z\000\000\000\235B3\219d\2553d\137#R\015\001L$\254Z\131",
    xray_type = 1,
    bytes_to_decrypt = 0
  }
}
return pe.xray_block(L0_0, 4, -1, -4096, -256)
