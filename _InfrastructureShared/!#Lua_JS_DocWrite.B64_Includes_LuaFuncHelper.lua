local L0_0, L1_1, L2_2, L3_3
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 == nil or L0_0 < 500 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = 1048576
L2_2 = mp
L2_2 = L2_2.readprotection
L3_3 = false
L2_2(L3_3)
L2_2 = mp
L2_2 = L2_2.readfile
L3_3 = 0
L2_2 = L2_2(L3_3, math_min(L0_0, L1_1))
L3_3 = mp
L3_3 = L3_3.readprotection
L3_3(true)
if L2_2 == nil then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = string
L3_3 = L3_3.match
L3_3 = L3_3(L2_2, "atob%(%s*[\"']([A-Za-z0-9+%/=]+)")
if #L3_3 > 500 then
  mp.vfo_add_buffer(MpCommon.Base64Decode(L3_3), "[DocWrite.B64]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
  mp.set_mpattribute("//NScript:JSEnableEmulation")
  return mp.INFECTED
end
return mp.CLEAN
