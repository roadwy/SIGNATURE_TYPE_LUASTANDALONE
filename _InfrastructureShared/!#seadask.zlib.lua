local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
L0_0 = mp
L0_0 = L0_0.get_mpattribute
L1_1 = "SCRIPT:Trojan:Win32/Seadask.gen.A!dha"
L0_0 = L0_0(L1_1)
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 < 3145728 or L0_0 > 5242880 then
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
L2_2 = 1
for L6_6 in L3_3(L4_4, L5_5) do
  if L2_2 > 10 then
    break
  end
  if #L6_6 > 3145728 and #L6_6 < 5242880 then
    mp.set_mpattribute("//Seadask.Zlib")
    mp.vfo_add_buffer("CWSHACK\000" .. MpCommon.Base64Decode(L6_6), string.format("[Seadask.Zlib-%x]", L2_2), mp.ADD_VFO_TAKE_ACTION_ON_DAD)
    break
  end
  L2_2 = L2_2 + 1
end
return L3_3
