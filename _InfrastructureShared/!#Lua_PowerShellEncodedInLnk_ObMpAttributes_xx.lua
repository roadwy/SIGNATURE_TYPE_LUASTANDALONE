local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
L0_0 = mp
L0_0 = L0_0.get_mpattribute
L1_1 = "PACKED_WITH:[CMDEmbedded]"
L0_0 = L0_0(L1_1)
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.UfsGetMetadataBool
L1_1 = "Lua:PowerShellInLnk"
L2_2 = true
L1_1 = L0_0(L1_1, L2_2)
L2_2 = mp
L2_2 = L2_2.get_mpattribute
L3_3 = "SCRIPT:PowerShell"
L2_2 = L2_2(L3_3)
if L2_2 then
  L2_2 = mp
  L2_2 = L2_2.get_mpattribute
  L3_3 = "SCRIPT:EncodedCommand"
  L2_2 = L2_2(L3_3)
elseif not L2_2 and (L0_0 ~= 0 or not L1_1) then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = mp
L2_2 = L2_2.getfilesize
L2_2 = L2_2()
if L2_2 < 100 or L2_2 > 4000 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = tostring
L4_4 = headerpage
L3_3 = L3_3(L4_4)
L4_4 = string
L4_4 = L4_4.find
L5_5 = L3_3
L6_6 = "-[Ee][nN]*[cC]*%a*%s+[\"']*([%w+/]+=?=?)"
L6_6 = L4_4(L5_5, L6_6)
if not L4_4 then
  return mp.CLEAN
end
mp.vfo_add_buffer(MpCommon.Base64Decode(L6_6), "[PSEncodedCommand]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
return mp.INFECTED
