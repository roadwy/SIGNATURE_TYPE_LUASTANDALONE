local L0_0
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if not (L0_0 < 4096) then
  L0_0 = mp
  L0_0 = L0_0.getfilesize
  L0_0 = L0_0()
elseif L0_0 > 5242880 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = peattributes
L0_0 = L0_0.packed
if L0_0 == true then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = peattributes
L0_0 = L0_0.packersigmatched
if L0_0 == true then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = peattributes
L0_0 = L0_0.epinfirstsect
if L0_0 == false then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = pehdr
L0_0 = L0_0.NumberOfSections
if L0_0 ~= 1 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = pehdr
L0_0 = L0_0.Subsystem
if L0_0 ~= 3 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = pehdr
L0_0 = L0_0.TimeDateStamp
if L0_0 ~= 0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = pehdr
L0_0 = L0_0.SizeOfCode
if L0_0 ~= 4 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = pesecs
L0_0 = L0_0[1]
L0_0 = L0_0.NameDW
if L0_0 ~= 1634891822 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = pesecs
L0_0 = L0_0[1]
L0_0 = L0_0.Characteristics
if L0_0 ~= 3758096608 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = epcode
L0_0 = L0_0[1]
if L0_0 ~= 195 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = {
  {
    sig = "h\134W\r\000h\136N\r\000\232\026\000\000\000\137E\252h\250\1394\000h",
    xray_type = 4,
    bytes_to_decrypt = 0
  },
  {
    sig = "h\000\000\000\134\000\000\000W\000\000\000\r\000\000\000\000\000\000\000h\000\000\000\136\000\000\000N\000\000\000",
    xray_type = 4,
    bytes_to_decrypt = 0
  }
}
return pe.xray_block(L0_0, 2, -1, 0, -1)
