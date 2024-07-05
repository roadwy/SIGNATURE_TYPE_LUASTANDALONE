local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = string
L0_0 = L0_0.sub
L1_1 = mp
L1_1 = L1_1.getfilename
L2_2 = mp
L2_2 = L2_2.bitor
L3_3 = mp
L3_3 = L3_3.FILEPATH_QUERY_FNAME
L4_4 = mp
L4_4 = L4_4.FILEPATH_QUERY_LOWERCASE
L4_4 = L2_2(L3_3, L4_4)
L1_1 = L1_1(L2_2, L3_3, L4_4, L2_2(L3_3, L4_4))
L2_2 = 0
L3_3 = -5
L0_0 = L0_0(L1_1, L2_2, L3_3)
if L0_0 ~= nil then
  L1_1 = #L0_0
elseif L1_1 < 4 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = {}
L1_1[".bin"] = true
L1_1[".cpl"] = true
L1_1[".dat"] = true
L1_1[".db"] = true
L3_3 = L0_0
L2_2 = L0_0.sub
L4_4 = -3
L2_2 = L2_2(L3_3, L4_4)
L2_2 = L1_1[L2_2]
if L2_2 ~= true then
  L3_3 = L0_0
  L2_2 = L0_0.sub
  L4_4 = -4
  L2_2 = L2_2(L3_3, L4_4)
  L2_2 = L1_1[L2_2]
elseif L2_2 == true then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = pe
L2_2 = L2_2.get_versioninfo
L2_2 = L2_2()
if L2_2 ~= nil then
  L3_3 = L2_2.OriginalFilename
  if L3_3 == nil then
    L3_3 = L2_2.InternalName
  end
elseif L3_3 == nil then
  L3_3 = mp
  L3_3 = L3_3.INFECTED
  return L3_3
end
L3_3, L4_4 = nil, nil
if L2_2.OriginalFilename ~= nil then
  L3_3 = L2_2.OriginalFilename:lower():match("(.+)%.")
end
if L2_2.InternalName ~= nil then
  L4_4 = L2_2.InternalName:lower():match("(.+)%.")
end
if L3_3 == nil or L4_4 == nil then
  return mp.CLEAN
end
if string.find(L0_0, L3_3, 1, true) == nil or string.find(L0_0, L4_4, 1, true) == nil then
  return mp.INFECTED
end
return mp.CLEAN
