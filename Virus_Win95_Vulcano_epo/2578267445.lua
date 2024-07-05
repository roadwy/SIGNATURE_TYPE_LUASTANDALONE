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
L0_0 = pesecs
L0_0 = L0_0[pehdr.NumberOfSections]
L0_0 = L0_0.SizeOfRawData
if L0_0 < 6656 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.bitand
L0_0 = L0_0(pehdr.MajorImageVersion, 1)
L0_0 = not L0_0
if L0_0 == 0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = {
  {
    sig = "`\232\000\000\000\000]\141\181\198\000\000\000\141\189\244",
    xray_type = 8,
    bytes_to_decrypt = 0
  },
  {
    sig = "`\232\000\000\000\000]\141\181\198\000\000\000\141\189\254",
    xray_type = 8,
    bytes_to_decrypt = 0
  }
}
return pe.xray_block(L0_0, 2, -1, 0, 256)
