local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 == nil or L0_0 < 200 or L0_0 > 2097152 then
  L1_1 = mp
  L1_1 = L1_1.INFECTED
  return L1_1
end
L1_1 = 21
L2_2 = 2097152
L3_3 = ""
L4_4 = mp
L4_4 = L4_4.readprotection
L4_4(false)
L4_4 = L0_0 - L1_1
if L2_2 > L4_4 then
  L4_4 = mp
  L4_4 = L4_4.readfile
  L4_4 = L4_4(L1_1, L0_0 - L1_1)
  L3_3 = L4_4
else
  L4_4 = mp
  L4_4 = L4_4.readfile
  L4_4 = L4_4(L1_1, L2_2)
  L3_3 = L4_4
end
L4_4 = mp
L4_4 = L4_4.readprotection
L4_4(true)
if L3_3 ~= nil then
  L4_4 = #L3_3
elseif L4_4 < 200 then
  L4_4 = mp
  L4_4 = L4_4.INFECTED
  return L4_4
end
L4_4 = string
L4_4 = L4_4.find
L4_4 = L4_4(L3_3, "\"", -20, true)
L4_4 = L4_4 - 1
if L4_4 == nil then
  return mp.INFECTED
end
L3_3 = MpCommon.Base64Decode(string.sub(L3_3, 1, L4_4))
mp.vfo_add_buffer(L3_3, "[DocWrite]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
return mp.INFECTED
