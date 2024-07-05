local L0_0, L1_1, L2_2, L3_3
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 < 16 or L0_0 > 1048576 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.HEADERPAGE_SZ
if 0 == L1_1 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.getfilename
L1_1 = L1_1()
L3_3 = L1_1
L2_2 = L1_1.find
L2_2 = L2_2(L3_3, "\\Temporary Internet Files\\Content.IE5\\")
if L2_2 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2, L3_3 = nil, nil
L2_2, L3_3 = L1_1:find("%.%w+$")
if nil == L2_2 then
  return mp.CLEAN
end
if false == true then
  return mp.CLEAN
end
if 3665532023 == mp.crc32(0, headerpage, 1, 3) then
  if 0 ~= mp.FOOTERPAGE_SZ and 1814796034 == mp.crc32(0, footerpage, mp.FOOTERPAGE_SZ - 1, 2) then
    return mp.CLEAN
  end
  return mp.INFECTED
end
return mp.CLEAN
