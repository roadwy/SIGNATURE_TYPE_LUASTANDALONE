local L0_0
L0_0 = peattributes
L0_0 = L0_0.executble_image
if L0_0 == false then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = peattributes
L0_0 = L0_0.epscn_islast
if L0_0 == false then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = peattributes
L0_0 = L0_0.lastscn_writable
if L0_0 == false then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.readu_u32
L0_0 = L0_0(epcode, 7)
if L0_0 ~= 767591256 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.readu_u32
L0_0 = L0_0(epcode, 13)
if L0_0 ~= 2165836939 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = {
  {
    sig = "\199E\252\001\000\000\000\232\000\000\000\000X\137E\252\139E\252\131\192\240",
    xray_type = 3,
    bytes_to_decrypt = 0
  }
}
return pe.xray_block(L0_0, 1, -1, pehdr.AddressOfEntryPoint - pesecs[pehdr.NumberOfSections].VirtualAddress, -1)
