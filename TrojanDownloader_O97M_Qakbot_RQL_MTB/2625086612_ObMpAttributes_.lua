local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 < 126976 or L0_0 > 458752 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.readprotection
L2_2 = false
L1_1(L2_2)
L1_1 = tostring
L2_2 = mp
L2_2 = L2_2.readfile
L3_3 = 110128
L4_4 = 200
L5_5 = L2_2(L3_3, L4_4)
L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5, L2_2(L3_3, L4_4))
L2_2 = string
L2_2 = L2_2.lower
L3_3 = L1_1
L2_2 = L2_2(L3_3)
L1_1 = L2_2
L2_2 = string
L2_2 = L2_2.find
L3_3 = L1_1
L4_4 = "regsvr32 %-silent %.%.\\drezd"
L2_2 = L2_2(L3_3, L4_4)
if L2_2 ~= nil then
  L2_2 = mp
  L2_2 = L2_2.INFECTED
  return L2_2
elseif L0_0 > 131072 then
  L2_2 = tostring
  L3_3 = mp
  L3_3 = L3_3.readfile
  L4_4 = 121696
  L5_5 = 200
  L5_5 = L3_3(L4_4, L5_5)
  L2_2 = L2_2(L3_3, L4_4, L5_5, L3_3(L4_4, L5_5))
  L3_3 = string
  L3_3 = L3_3.lower
  L4_4 = L2_2
  L3_3 = L3_3(L4_4)
  L2_2 = L3_3
  L3_3 = tostring
  L4_4 = mp
  L4_4 = L4_4.readfile
  L5_5 = 127776
  L5_5 = L4_4(L5_5, 600)
  L3_3 = L3_3(L4_4, L5_5, L4_4(L5_5, 600))
  L4_4 = string
  L4_4 = L4_4.lower
  L5_5 = L3_3
  L4_4 = L4_4(L5_5)
  L3_3 = L4_4
  L4_4 = string
  L4_4 = L4_4.find
  L5_5 = L2_2
  L4_4 = L4_4(L5_5, "regsvr32 %-silent %.%.\\drezd")
  if L4_4 == nil then
    L4_4 = string
    L4_4 = L4_4.find
    L5_5 = L3_3
    L4_4 = L4_4(L5_5, "regsvr32 %-silent %.%.\\celod")
  else
    if L4_4 ~= nil then
      L4_4 = mp
      L4_4 = L4_4.INFECTED
      return L4_4
  end
  elseif L0_0 > 407552 then
    L4_4 = tostring
    L5_5 = mp
    L5_5 = L5_5.readfile
    L5_5 = L5_5(406992, 200)
    L4_4 = L4_4(L5_5, L5_5(406992, 200))
    L5_5 = string
    L5_5 = L5_5.lower
    L5_5 = L5_5(L4_4)
    L4_4 = L5_5
    L5_5 = tostring
    L5_5 = L5_5(mp.readfile(403376, 200))
    L5_5 = string.lower(L5_5)
    if string.find(L4_4, "regsvr32 %-silent %.%.\\fiosa") ~= nil or string.find(L4_4, "regsvr32 %-silent %.%.\\violaf") ~= nil or string.find(L5_5, "regsvr32 %-silent %.%.\\xertis") ~= nil then
      return mp.INFECTED
    end
  end
end
L2_2 = mp
L2_2 = L2_2.CLEAN
return L2_2
