local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
L0_0 = mp
L0_0 = L0_0.get_mpattribute
L1_1 = "BM_RTF_FILE"
L0_0 = L0_0(L1_1)
if L0_0 then
  L0_0 = mp
  L0_0 = L0_0.get_mpattribute
  L1_1 = "RPF:TopLevelFile"
  L0_0 = L0_0(L1_1)
elseif not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.get_mpattribute
L1_1 = "RoyalRoadRTF.vfo"
L0_0 = L0_0(L1_1)
if L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.readprotection
L1_1 = false
L0_0(L1_1)
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = 16384
L2_2 = nil
if L0_0 < L1_1 then
  L3_3 = mp
  L3_3 = L3_3.readfile
  L4_4 = 1
  L5_5 = L0_0
  L3_3 = L3_3(L4_4, L5_5)
  L2_2 = L3_3
else
  L3_3 = mp
  L3_3 = L3_3.readfile
  L4_4 = L0_0 - L1_1
  L4_4 = L4_4 - 1
  L5_5 = L1_1
  L3_3 = L3_3(L4_4, L5_5)
  L2_2 = L3_3
end
if L2_2 == nil then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = string
L3_3 = L3_3.find
L4_4 = L2_2
L5_5 = "{\\*\\objdata"
L6_6 = 1
L7_7 = true
L3_3 = L3_3(L4_4, L5_5, L6_6, L7_7)
if L3_3 == nil then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = string
L4_4 = L4_4.sub
L5_5 = L2_2
L6_6 = L3_3
L4_4 = L4_4(L5_5, L6_6)
L2_2 = L4_4
L4_4 = 0
L5_5 = string
L5_5 = L5_5.find
L6_6 = L2_2
L7_7 = "([{}])"
L7_7 = L5_5(L6_6, L7_7)
while L5_5 ~= nil and L7_7 ~= nil do
  if L7_7 == "{" then
    L4_4 = L4_4 + 1
  elseif L7_7 == "}" then
    L4_4 = L4_4 - 1
  end
  if L4_4 < 1 then
    if L5_5 > 10 then
      mp.vfo_add_buffer(string.sub(L2_2, 1, L5_5 + 1), "[RTFobjdata]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
      return mp.INFECTED
    end
    break
  end
  L5_5, L6_6, L7_7 = string.find(L2_2, "([{}])", L5_5 + 1)
end
return mp.CLEAN
