local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
L0_0 = mp
L0_0 = L0_0.get_mpattribute
L1_1 = "SCRIPT:Poshkod.gen!A"
L0_0 = L0_0(L1_1)
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 > 1048576 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.readprotection
L1_1(L2_2)
L1_1 = mp
L1_1 = L1_1.readfile
L1_1 = L1_1(L2_2, L3_3)
if L2_2 < 4096 then
  if L2_2 > 1048576 then
    return L2_2
  end
end
for L5_5 in L2_2(L3_3, L4_4) do
  if #L5_5 > 4096 then
    mp.vfo_add_buffer(MpCommon.Base64Decode("JwBCAG0AJwA7" .. L5_5), "[Poshkod.gen!A]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
    break
  end
end
return L2_2
