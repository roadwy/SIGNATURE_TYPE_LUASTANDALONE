local L0_0
L0_0 = peattributes
L0_0 = L0_0.lastscn_writable
if L0_0 == false then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = epcode
L0_0 = L0_0[1]
if L0_0 ~= 232 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = pesecs
L0_0 = L0_0[pehdr.NumberOfSections]
L0_0 = L0_0.SizeOfRawData
if L0_0 <= 4182 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = pesecs
L0_0 = L0_0[pehdr.NumberOfSections]
L0_0 = L0_0.VirtualSize
if L0_0 <= 4182 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = epcode
L0_0 = L0_0[4]
if L0_0 ~= 0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = epcode
L0_0 = L0_0[5]
if L0_0 ~= 0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = {
  {
    sig = "\232\000\000\000\000\189\n\000A\000\247\221X\003\232\v",
    xray_type = 13,
    bytes_to_decrypt = 0
  },
  {
    sig = "\232\000\000\000\000\189\n\016@\000\247\221X\003\232\v",
    xray_type = 13,
    bytes_to_decrypt = 0
  },
  {
    sig = "\232\000\000\000\000\144\189\n\016@\000\247\221X\003\232",
    xray_type = 13,
    bytes_to_decrypt = 0
  }
}
return pe.xray_block(L0_0, 3, -2, 0, 2048)
