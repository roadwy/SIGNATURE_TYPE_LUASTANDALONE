local L0_0, L1_1, L2_2
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 == nil or L0_0 > 100000 or L0_0 < 100 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.readprotection
L2_2 = false
L1_1(L2_2)
L1_1 = mp
L1_1 = L1_1.readfile
L2_2 = 0
L1_1 = L1_1(L2_2, L0_0)
L2_2 = mp
L2_2 = L2_2.readprotection
L2_2(true)
if L1_1 == nil then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = string
L2_2 = L2_2.gsub
L2_2 = L2_2(L1_1, "src=\"data:text/javascript;base64,(.-)\">", function(A0_3)
  return ">" .. MpCommon.Base64Decode(A0_3)
end)
if #L2_2 > 0 then
  mp.vfo_add_buffer(L2_2, "[B64JavaScript]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
  mp.set_mpattribute("//NScript:JSEnableEmulation")
  return mp.INFECTED
end
return mp.CLEAN
