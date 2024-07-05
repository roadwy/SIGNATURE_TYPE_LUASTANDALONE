local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = string
L0_0 = L0_0.lower
L1_1 = mp
L1_1 = L1_1.getfilename
L4_4 = L1_1()
L0_0 = L0_0(L1_1, L2_2, L3_3, L4_4, L1_1())
L1_1 = string
L1_1 = L1_1.sub
L2_2 = L0_0
L3_3 = -4
L1_1 = L1_1(L2_2, L3_3)
if L1_1 ~= ".zip" then
  L1_1 = string
  L1_1 = L1_1.sub
  L2_2 = L0_0
  L3_3 = -4
  L1_1 = L1_1(L2_2, L3_3)
elseif L1_1 == ".exe" then
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
  L3_3 = L2_2.gsub
  L3_3 = L3_3(L4_4, "%[%d%d?%]", "")
  L2_2 = L3_3
  L4_4 = L2_2
  L3_3 = L2_2.match
  L4_4 = L3_3(L4_4, "(video%.hd_%d+)(%....)")
  if L3_3 == nil then
    L3_3, L4_4 = L2_2:match("(hd%.gallery_%d+)(%....)")
  end
  if L3_3 ~= nil and (L4_4 == ".zip" or L4_4 == ".exe") then
    mp.set_mpattribute("Lua:SuspiciousFileName.A")
    return mp.CLEAN
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
