local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = string
L0_0 = L0_0.lower
L1_1 = mp
L1_1 = L1_1.getfilename
L4_4 = L1_1()
L0_0 = L0_0(L1_1, L2_2, L3_3, L4_4, L1_1())
L2_2 = L0_0
L1_1 = L0_0.find
L3_3 = "programdata"
L4_4 = 1
L1_1 = L1_1(L2_2, L3_3, L4_4, true)
if L1_1 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L2_2 = L0_0
L1_1 = L0_0.match
L3_3 = "(.+\\)([^\\]+)$"
L2_2 = L1_1(L2_2, L3_3)
if L2_2 == nil then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L4_4 = L2_2
L3_3 = L2_2.len
L3_3 = L3_3(L4_4)
if L3_3 == 12 then
  L4_4 = L2_2
  L3_3 = L2_2.sub
  L3_3 = L3_3(L4_4, -4)
  if L3_3 == ".dll" then
    L4_4 = L1_1
    L3_3 = L1_1.match
    L4_4 = L3_3(L4_4, "(.+\\)(.+)\\$")
    if L4_4:len() == 8 and 1 <= string.gsub(L2_2, "%d", "") and 1 <= string.gsub(L4_4, "%d", "") and string.gsub(L2_2, "%d", "") + string.gsub(L4_4, "%d", "") >= 3 and L2_2:match("%x%x%x%x%x%x%x%x.dll") and L4_4:match("%x%x%x%x%x%x%x%x") then
      mp.set_mpattribute("LUA:Adposhell:Name")
    end
  end
end
L3_3 = mp
L3_3 = L3_3.CLEAN
return L3_3
