local L0_0
L0_0 = peattributes
L0_0 = L0_0.lastscn_writable
if L0_0 == false then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = peattributes
L0_0 = L0_0.no_relocs
if L0_0 == false then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = pehdr
L0_0 = L0_0.Win32VersionValue
if L0_0 ~= 1497581388 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = pesecs
L0_0 = L0_0[pehdr.NumberOfSections]
L0_0 = L0_0.SizeOfRawData
if L0_0 <= 12000 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = pesecs
L0_0 = L0_0[pehdr.NumberOfSections]
L0_0 = L0_0.VirtualSize
if L0_0 <= 12000 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = pehdr
L0_0 = L0_0.Machine
if L0_0 ~= 332 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = peattributes
L0_0 = L0_0.epscn_islast
if L0_0 ~= false then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = {
  {
    sig = "\232\000\000\000\000]\139\197\129\237\194\024@\000-\153\b\000\000-",
    xray_type = 1,
    bytes_to_decrypt = 0
  },
  {
    sig = "\232\000\000\000\000]\139\197\129\237\194\024@\000-\153\b\000\000-",
    xray_type = 1,
    bytes_to_decrypt = 0
  },
  {
    sig = "\232\000\000\000\000]\139\197\129\237\194\bA\000-\153\b\000\000-",
    xray_type = 1,
    bytes_to_decrypt = 0
  },
  {
    sig = "\232\000\000\000\000]\139\197\129\237\142\024@\000-e\b\000\000-",
    xray_type = 1,
    bytes_to_decrypt = 0
  }
}
return pe.xray_block(L0_0, 4, -1, -16384, -8192)
