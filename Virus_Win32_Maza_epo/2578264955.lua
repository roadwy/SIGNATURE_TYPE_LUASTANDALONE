local L0_0
L0_0 = pehdr
L0_0 = L0_0.MinorImageVersion
if L0_0 ~= 106 then
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
L0_0 = L0_0.lastscn_valign
if L0_0 == false then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = pesecs
L0_0 = L0_0[pehdr.NumberOfSections]
L0_0 = L0_0.SizeOfRawData
if L0_0 < 1024 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = pesecs
L0_0 = L0_0[pehdr.NumberOfSections]
L0_0 = L0_0.VirtualSize
if L0_0 < 1024 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = {
  {
    sig = "`\141l$ \232\006\000\000\000\139d$\b\235'dg\2556\000\000dg\137&\000\000\232\000\000\000",
    xray_type = 0,
    bytes_to_decrypt = 0
  },
  {
    sig = "`\141l$ \232\t\000\000\000\139d$\b\235+\144\144\144dg\2556\000\000dg\137&\000\000\232",
    xray_type = 0,
    bytes_to_decrypt = 0
  }
}
return pe.xray_block(L0_0, 2, -1, -2048, -1024)
