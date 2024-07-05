local L0_0
L0_0 = peattributes
L0_0 = L0_0.lastscn_writable
if L0_0 == false then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = headerpage
L0_0 = L0_0[41]
if L0_0 ~= 231 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = pesecs
L0_0 = L0_0[pehdr.NumberOfSections]
L0_0 = L0_0.SizeOfRawData
if L0_0 <= 16384 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = pesecs
L0_0 = L0_0[pehdr.NumberOfSections]
L0_0 = L0_0.VirtualSize
if L0_0 <= 16384 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = {
  {
    sig = "\214\2322\022\000\000\137\133\200\t\000\000\232G\018\000",
    xray_type = 1,
    bytes_to_decrypt = 0
  },
  {
    sig = "\214\232/\022\000\000\137\133\195\t\000\000\232B\018\000",
    xray_type = 1,
    bytes_to_decrypt = 0
  },
  {
    sig = "\214\232\135\023\000\000\137\133\191\n\000\000\232\153\019\000",
    xray_type = 1,
    bytes_to_decrypt = 0
  },
  {
    sig = "\214\232;\022\000\000\137\133\200\t\000\000\232G\018\000",
    xray_type = 1,
    bytes_to_decrypt = 0
  }
}
return pe.xray_block(L0_0, 4, -1, 0, -1)
