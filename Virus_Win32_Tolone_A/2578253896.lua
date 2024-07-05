local L0_0
L0_0 = mp
L0_0 = L0_0.readu_u16
L0_0 = L0_0(headerpage, 29)
if L0_0 ~= 22340 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = pesecs
L0_0 = L0_0[1]
L0_0 = L0_0.SizeOfRawData
if L0_0 <= 4096 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = {
  {
    sig = "hMUTE\144\002\006hSYS_\144\002\006\137\144\002\a\232\144\000",
    xray_type = 9,
    bytes_to_decrypt = 0
  }
}
return pe.xray_block(L0_0, 1, 0, -16384, -1)
