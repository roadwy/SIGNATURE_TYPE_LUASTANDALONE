local L0_0
L0_0 = pevars
L0_0 = L0_0.epsec
if L0_0 > pehdr.NumberOfSections then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = pesecs
L0_0 = L0_0[pevars.epsec]
L0_0 = L0_0.VirtualSize
if L0_0 > 24576 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = pesecs
L0_0 = L0_0[pevars.epsec]
L0_0 = L0_0.VirtualSize
if L0_0 < 20480 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = pesecs
L0_0 = L0_0[pevars.epsec]
L0_0 = L0_0.SizeOfRawData
if L0_0 < 23040 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = pesecs
L0_0 = L0_0[pevars.epsec]
L0_0 = L0_0.SizeOfRawData
if L0_0 > 24576 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.bitand
L0_0 = L0_0(pesecs[pevars.epsec].Characteristics, 3758096416)
if L0_0 ~= 3758096416 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = {
  {
    sig = "j\025j\000\255\214\139}\b\128'\000\133\192t\017",
    xray_type = 3,
    bytes_to_decrypt = 0
  }
}
return pe.xray_block(L0_0, 1, 0, 0, -1)
