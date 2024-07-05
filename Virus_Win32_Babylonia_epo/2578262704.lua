local L0_0
L0_0 = peattributes
L0_0 = L0_0.lastscn_falign
if L0_0 == false then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.bitand
L0_0 = L0_0(pesecs[1].Characteristics, 3758096416)
if L0_0 ~= 3758096416 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.bitand
L0_0 = L0_0(pesecs[pehdr.NumberOfSections].Characteristics, 3221225536)
if L0_0 ~= 3221225536 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = pesecs
L0_0 = L0_0[pehdr.NumberOfSections]
L0_0 = L0_0.SizeOfRawData
if L0_0 < 11036 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = {
  {
    sig = "\200 \000\000QS\139]\f\128\251!t\b\128\251$t\003\128\251%\144\233",
    xray_type = 0,
    bytes_to_decrypt = 0
  }
}
return pe.xray_block(L0_0, 1, -1, 0, -1)
