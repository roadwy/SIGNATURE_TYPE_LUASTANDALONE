local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = peattributes
L0_0 = L0_0.no_security
if L0_0 == false then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 < 10000 and L0_0 > 30000 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = string
L1_1 = L1_1.lower
L2_2 = mp
L2_2 = L2_2.getfilename
L4_4 = L2_2()
L1_1 = L1_1(L2_2, L3_3, L4_4, L2_2())
L2_2 = string
L2_2 = L2_2.sub
L3_3 = L1_1
L4_4 = -4
L2_2 = L2_2(L3_3, L4_4)
if L2_2 == ".exe" then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = peattributes
L3_3 = L3_3.isdll
if L3_3 ~= false then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = pehdr
L3_3 = L3_3.NumberOfSections
if L3_3 ~= 4 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = pehdr
L3_3 = L3_3.Characteristics
if L3_3 ~= 258 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = pe
L3_3 = L3_3.get_versioninfo
L3_3 = L3_3()
L4_4 = L3_3.InternalName
if L4_4 ~= "ping.exe" then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = mp
L4_4 = L4_4.readprotection
L4_4(false)
L4_4 = mp
L4_4 = L4_4.readu_u32
L4_4 = L4_4(2048, 1)
if L4_4 ~= 0 then
  L4_4 = mp
  L4_4 = L4_4.readu_u32
  L4_4 = L4_4(2052, 1)
  if L4_4 ~= 0 then
    L4_4 = mp
    L4_4 = L4_4.readu_u32
    L4_4 = L4_4(2056, 1)
    if L4_4 ~= 0 then
      L4_4 = mp
      L4_4 = L4_4.readu_u32
      L4_4 = L4_4(2060, 1)
      if L4_4 ~= 0 then
        L4_4 = mp
        L4_4 = L4_4.readu_u32
        L4_4 = L4_4(2064, 1)
      end
    end
  end
elseif L4_4 == 0 then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = mp
L4_4 = L4_4.readfile
L4_4 = L4_4(2048, 512)
if string.find(L4_4, "\204\204\204\204\204", 1, true) ~= nil then
  return mp.CLEAN
end
if string.find(L4_4, "hN'\000\000", 1, true) ~= nil then
  return mp.CLEAN
end
if string.find(L4_4, "h\017'\000\000j\001", 1, true) ~= nil then
  return mp.CLEAN
end
if string.find(L4_4, "hB'\000\000j\001\232", 1, true) ~= nil then
  return mp.CLEAN
end
return mp.INFECTED
