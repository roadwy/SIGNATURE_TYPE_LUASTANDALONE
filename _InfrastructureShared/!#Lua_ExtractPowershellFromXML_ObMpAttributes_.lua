local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 > 200000 then
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
L1_1 = L1_1(L2_2, L3_3)
L2_2 = mp
L2_2 = L2_2.readprotection
L2_2(L3_3)
L2_2 = string
L2_2 = L2_2.gsub
L2_2 = L2_2(L3_3, L4_4, L5_5)
L1_1 = L2_2
L2_2 = L1_1.gmatch
L2_2 = L2_2(L3_3, L4_4)
for L6_6 in L2_2, nil, nil do
  if #L6_6 > 80 then
    if mp.get_mpattribute("BM_SCHEDULEDTASK_JOBFILE") then
      mp.set_mpattribute("/BM_SCHEDULEDTASK_JOBFILE")
    end
    mp.vfo_add_buffer(MpCommon.Base64Decode(L6_6), "[PwsCode]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
  end
end
return L3_3
