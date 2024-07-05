local L0_0
L0_0 = doshdr
L0_0 = L0_0.e_csum
if L0_0 ~= 85 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = pehdr
L0_0 = L0_0.ImageBase
if L0_0 ~= 4194304 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 >= 409600 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = pesecs
L0_0 = L0_0[pehdr.NumberOfSections]
L0_0 = L0_0.SizeOfRawData
if L0_0 < 7000 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = pesecs
L0_0 = L0_0[pehdr.NumberOfSections]
L0_0 = L0_0.VirtualSize
if L0_0 < 7000 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = pehdr
L0_0 = L0_0.NumberOfSections
if L0_0 <= 3 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = pehdr
L0_0 = L0_0.SizeOfImage
if L0_0 < 7000 then
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
L0_0 = {
  {
    sig = "\232\000\000\000\000\144]\129\237\005 @\000\129\189\0280@\000OMEMt",
    xray_type = 4,
    bytes_to_decrypt = 0
  },
  {
    sig = "\232\000\000\000\000]\129\237\005 @\000\129\189H.@\000OMEMt<",
    xray_type = 4,
    bytes_to_decrypt = 0
  },
  {
    sig = "\232\000\000\000\000]\129\237\005 @\000\129\189\217.@\000OMEMt<",
    xray_type = 4,
    bytes_to_decrypt = 0
  },
  {
    sig = "\232\000\000\000\000]\129\237\005 @\000\129\189\231.@\000OMEMt<",
    xray_type = 4,
    bytes_to_decrypt = 0
  }
}
return pe.xray_block(L0_0, 4, -1, -12288, -128)
