local L0_0
L0_0 = doshdr
L0_0 = L0_0.e_csum
if L0_0 ~= 18772 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = pesecs
L0_0 = L0_0[pehdr.NumberOfSections]
L0_0 = L0_0.SizeOfRawData
if L0_0 < 2560 then
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
L0_0 = L0_0.NameDW
if L0_0 == 1633964078 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = {
  {
    sig = "\232\000\000\000\000]\129\237\161\016@\000\139D$ ",
    xray_type = 1,
    bytes_to_decrypt = 0
  }
}
return pe.xray_block(L0_0, 1, -1, -2560, -1536)
