local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
L0_0 = mp
L0_0 = L0_0.HEADERPAGE_SZ
if L0_0 < 1024 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.readu_u16
L1_1 = headerpage
L2_2 = 1
L0_0 = L0_0(L1_1, L2_2)
if L0_0 ~= 33328 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.readu_u32
L1_1 = headerpage
L2_2 = 5
L0_0 = L0_0(L1_1, L2_2)
if L0_0 == 2250901766 then
  L0_0 = mp
  L0_0 = L0_0.readu_u32
  L1_1 = headerpage
  L2_2 = 9
  L0_0 = L0_0(L1_1, L2_2)
  if L0_0 == 234325576 then
    L0_0 = mp
    L0_0 = L0_0.readu_u16
    L1_1 = headerpage
    L2_2 = 13
    L0_0 = L0_0(L1_1, L2_2)
    if L0_0 == 1793 then
      L0_0 = headerpage
      L0_0 = L0_0[15]
    end
  end
elseif L0_0 ~= 2 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.UfsGetMetadataBool
L1_1 = "Lua:SignedVBEVBSFile"
L2_2 = true
L1_1 = L0_0(L1_1, L2_2)
if L0_0 ~= 0 or not L1_1 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = tostring
L3_3 = headerpage
L2_2 = L2_2(L3_3)
L4_4 = L2_2
L3_3 = L2_2.find
L5_5 = "\006\t*\134H\134\247\r\001\t\001"
L6_6 = 176
L7_7 = true
L3_3 = L3_3(L4_4, L5_5, L6_6, L7_7)
if L3_3 == nil then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = mp
L4_4 = L4_4.crc32
L5_5 = -1
L6_6 = L2_2
L7_7 = L3_3
L4_4 = L4_4(L5_5, L6_6, L7_7, 128)
if L4_4 == 1253964061 then
  L5_5 = mp
  L5_5 = L5_5.INFECTED
  return L5_5
end
if L4_4 == 2001072022 then
  L5_5 = mp
  L5_5 = L5_5.INFECTED
  return L5_5
end
if L4_4 == 528523446 then
  L5_5 = mp
  L5_5 = L5_5.INFECTED
  return L5_5
end
if L4_4 == 436171478 then
  L5_5 = mp
  L5_5 = L5_5.INFECTED
  return L5_5
end
if L4_4 == 3846734772 then
  L5_5 = mp
  L5_5 = L5_5.INFECTED
  return L5_5
end
if L4_4 == 2453401516 then
  L5_5 = mp
  L5_5 = L5_5.INFECTED
  return L5_5
end
if L4_4 == 1904120670 then
  L5_5 = mp
  L5_5 = L5_5.INFECTED
  return L5_5
end
if L4_4 == 1282814643 then
  L5_5 = mp
  L5_5 = L5_5.INFECTED
  return L5_5
end
if L4_4 == 3099783027 then
  L5_5 = mp
  L5_5 = L5_5.INFECTED
  return L5_5
end
if L4_4 == 1988786358 then
  L5_5 = mp
  L5_5 = L5_5.INFECTED
  return L5_5
end
if L4_4 == 2685115694 then
  L5_5 = mp
  L5_5 = L5_5.INFECTED
  return L5_5
end
if L4_4 == 3427567834 then
  L5_5 = mp
  L5_5 = L5_5.INFECTED
  return L5_5
end
if L4_4 == 1626672047 then
  L5_5 = mp
  L5_5 = L5_5.INFECTED
  return L5_5
end
if L4_4 == 216580452 then
  L5_5 = mp
  L5_5 = L5_5.INFECTED
  return L5_5
end
if L4_4 == 3328643055 then
  L5_5 = mp
  L5_5 = L5_5.INFECTED
  return L5_5
end
if L4_4 == 2585924740 then
  L5_5 = mp
  L5_5 = L5_5.INFECTED
  return L5_5
end
if L4_4 == 3984502722 then
  L5_5 = mp
  L5_5 = L5_5.INFECTED
  return L5_5
end
if L4_4 == 3084158829 then
  L5_5 = mp
  L5_5 = L5_5.INFECTED
  return L5_5
end
if L4_4 == 642584810 then
  L5_5 = mp
  L5_5 = L5_5.INFECTED
  return L5_5
end
if L4_4 == 2067526196 then
  L5_5 = mp
  L5_5 = L5_5.INFECTED
  return L5_5
end
if L4_4 == 2955266051 then
  L5_5 = mp
  L5_5 = L5_5.INFECTED
  return L5_5
end
if L4_4 == 3877293981 then
  L5_5 = mp
  L5_5 = L5_5.INFECTED
  return L5_5
end
if L4_4 == 559314150 then
  L5_5 = mp
  L5_5 = L5_5.INFECTED
  return L5_5
end
if L4_4 == 2836382494 then
  L5_5 = mp
  L5_5 = L5_5.INFECTED
  return L5_5
end
if L4_4 == 3206025137 then
  L5_5 = mp
  L5_5 = L5_5.INFECTED
  return L5_5
end
if L4_4 == 4272565023 then
  L5_5 = mp
  L5_5 = L5_5.INFECTED
  return L5_5
end
if L4_4 == 260598575 then
  L5_5 = mp
  L5_5 = L5_5.INFECTED
  return L5_5
end
if L4_4 == 3431717411 then
  L5_5 = mp
  L5_5 = L5_5.INFECTED
  return L5_5
end
if L4_4 == 994572658 then
  L5_5 = mp
  L5_5 = L5_5.INFECTED
  return L5_5
end
if L4_4 == 4158500031 then
  L5_5 = mp
  L5_5 = L5_5.INFECTED
  return L5_5
end
L5_5 = mp
L5_5 = L5_5.get_mpattribute
L6_6 = "RPF:AnyFileHasIOAVURL"
L5_5 = L5_5(L6_6)
if not L5_5 then
  L5_5 = mp
  L5_5 = L5_5.CLEAN
  return L5_5
end
L5_5 = mp
L5_5 = L5_5.UfsGetMetadataBool
L6_6 = "Lua:SignedVBEVBSTopFile"
L7_7 = true
L6_6 = L5_5(L6_6, L7_7)
if L5_5 ~= 0 or not L6_6 then
  L7_7 = mp
  L7_7 = L7_7.CLEAN
  return L7_7
end
L7_7 = L2_2.find
L7_7 = L7_7(L2_2, "\006\003U\004\n\f\bPersonal1.0.\006\003U\004\003\f.Open Source Developer,", L3_3 - 96, false)
if L7_7 ~= nil then
  return mp.INFECTED
end
L7_7 = L2_2:find("\006\003U\004\n\f\nIndividual1.0.\006\003U\004\003\f.Open Source Developer,", L3_3 - 96, false)
if L7_7 ~= nil then
  return mp.INFECTED
end
L7_7 = L2_2:find("1.0.\006\003U\004\003\f.Open Source Developer,", L3_3 - 96, false)
if L7_7 ~= nil then
  L7_7 = L2_2:find("1.0.\006\003U\004\v\019\030Certum Certification Authority1.0.\006\003U\004\003\019\019Certum Level III CA", 176, false)
  if L7_7 ~= nil then
    return mp.INFECTED
  end
end
return mp.CLEAN
