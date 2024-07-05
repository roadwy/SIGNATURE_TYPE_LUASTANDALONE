local L0_0
L0_0 = pehdr
L0_0 = L0_0.Subsystem
if L0_0 == 3 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = pehdr
L0_0 = L0_0.SizeOfStackReserve
if L0_0 < 65536 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = pehdr
L0_0 = L0_0.SizeOfStackCommit
if L0_0 < 65536 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = pevars
L0_0 = L0_0.epsec
if L0_0 > pehdr.NumberOfSections then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.bitand
L0_0 = L0_0(pesecs[pevars.epsec].Characteristics, 536870912)
if L0_0 ~= 536870912 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = pesecs
L0_0 = L0_0[pehdr.NumberOfSections]
L0_0 = L0_0.SizeOfRawData
if L0_0 <= 8192 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = pesecs
L0_0 = L0_0[pehdr.NumberOfSections]
L0_0 = L0_0.VirtualSize
if L0_0 <= 8192 then
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
L0_0 = L0_0.packed
if L0_0 ~= false then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = {
  {
    sig = "\232\000\000\000\000]\232\232\003\000\000jEY\141\181\0064\000\000\232\f\004\000\000\141\133\188\000\000\000T",
    xray_type = 17,
    bytes_to_decrypt = 0
  },
  {
    sig = "\232\000\000\000\000]\232w\004\000\000jEY\141\181\1975\000\000\232\155\004\000\000\141\133\188\000\000\000T",
    xray_type = 17,
    bytes_to_decrypt = 0
  },
  {
    sig = "\232\000\000\000\000]\232w\004\000\000jEY\141\181\1985\000\000\232\155\004\000\000\141\133\188\000\000\000T",
    xray_type = 17,
    bytes_to_decrypt = 0
  },
  {
    sig = "\232\000\000\000\000]\232-\004\000\000jEY\141\181\2125\000\000\232Q\004\000\000\141\133\188\000\000\000T",
    xray_type = 17,
    bytes_to_decrypt = 0
  },
  {
    sig = "\232\000\000\000\000]\232w\004\000\000jEY\141\181\0307\000\000\232\155\004\000\000\141\133\188\000\000\000T",
    xray_type = 17,
    bytes_to_decrypt = 0
  },
  {
    sig = "\232\000\000\000\000]\232w\004\000\000jEY\141\181(7\000\000\232\155\004\000\000\141\133\188\000\000\000T",
    xray_type = 18,
    bytes_to_decrypt = 0
  },
  {
    sig = "\232\000\000\000\000]\232\188\004\000\000jEY\141\181\1977\000\000\232\224\004\000\000\141\133\188\000\000\000T",
    xray_type = 17,
    bytes_to_decrypt = 0
  },
  {
    sig = "\232\000\000\000\000]\232\188\004\000\000jEY\141\181\0309\000\000\232\224\004\000\000\141\133\188\000\000\000T",
    xray_type = 17,
    bytes_to_decrypt = 0
  },
  {
    sig = "\232\000\000\000\000]\232\188\004\000\000jEY\141\181(9\000\000\232\224\004\000\000\141\133\188\000\000\000T",
    xray_type = 18,
    bytes_to_decrypt = 0
  }
}
return pe.xray_block(L0_0, 9, -1, -40960, -12288)
