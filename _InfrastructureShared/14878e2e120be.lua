local L0_0
L0_0 = pehdr
L0_0 = L0_0.NumberOfSections
if L0_0 < 1 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = {
  {
    sig = "\255\208\131\236\b\199D$\016@\000\000\000\199D$\f\0000\000\000",
    xray_type = 11,
    bytes_to_decrypt = 0
  }
}
if pesecs[1].SizeOfRawData >= 65536 then
  return mp.CLEAN
end
return pe.xray_block(L0_0, 1, 0, 0, pesecs[1].SizeOfRawData)
