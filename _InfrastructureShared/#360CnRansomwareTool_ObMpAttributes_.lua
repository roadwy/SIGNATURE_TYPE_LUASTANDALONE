local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = {}
L0_0["360.cn"] = true
L1_1 = {}
L1_1["ramengine.dll"] = true
L2_2 = pe
L2_2 = L2_2.get_versioninfo
L2_2 = L2_2()
if L2_2 == nil then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = L2_2.CompanyName
L4_4 = L2_2.OriginalFilename
if L3_3 then
  L3_3 = string.lower(L3_3)
else
  L3_3 = ""
end
if L4_4 then
  L4_4 = string.lower(L4_4)
else
  L4_4 = ""
end
if L0_0[L3_3] and L1_1[L4_4] then
  mp.set_mpattribute("LUA:360CnRansomwareTool")
  return mp.INFECTED
end
return mp.CLEAN
