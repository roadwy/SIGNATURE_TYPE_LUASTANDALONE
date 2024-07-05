local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
L0_0 = string
L0_0 = L0_0.lower
L1_1 = mp
L1_1 = L1_1.getfilename
L5_5 = L1_1()
L0_0 = L0_0(L1_1, L2_2, L3_3, L4_4, L5_5, L1_1())
if L0_0 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L2_2 = L0_0
L1_1 = L0_0.find
L3_3 = "microsoft.griffin.mlagilityservice.dll"
L4_4 = 1
L5_5 = true
L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5)
if L1_1 ~= nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = pe
L1_1 = L1_1.get_versioninfo
L1_1 = L1_1()
if L1_1 == nil then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = L1_1.CompanyName
if L2_2 ~= nil then
  L3_3 = string
  L3_3 = L3_3.lower
  L4_4 = L2_2
  L3_3 = L3_3(L4_4)
  L2_2 = L3_3
  L3_3 = {}
  L3_3["microsoft corporation"] = "Lua:Company_Microsoft"
  L3_3["microsoft corp."] = "Lua:Company_Microsoft"
  L4_4 = L3_3[L2_2]
  if L4_4 ~= nil then
    L4_4 = mp
    L4_4 = L4_4.CLEAN
    return L4_4
  end
  L4_4 = L1_1.InternalName
  L5_5 = L1_1.OriginalFilename
  if L4_4 then
    L4_4 = string.lower(L4_4)
    if string.find(L4_4, "microsoft.", 1, true) == 1 and L5_5 then
      L5_5 = string.lower(L5_5)
      if string.find(L5_5, "microsoft.", 1, true) == 1 and L4_4:match("(.+)%..+") ~= L2_2 then
        return mp.INFECTED
      end
    end
  end
end
L3_3 = mp
L3_3 = L3_3.CLEAN
return L3_3
