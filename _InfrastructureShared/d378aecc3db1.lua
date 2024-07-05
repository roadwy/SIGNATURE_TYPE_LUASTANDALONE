local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
L0_0 = peattributes
L0_0 = L0_0.ismsil
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 > 16777216 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = nil
L2_2 = hstrlog
L2_2 = L2_2[3]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = hstrlog
  L2_2 = L2_2[3]
  L1_1 = L2_2.VA
else
  L2_2 = hstrlog
  L2_2 = L2_2[4]
  L2_2 = L2_2.matched
  if L2_2 then
    L2_2 = hstrlog
    L2_2 = L2_2[4]
    L1_1 = L2_2.VA
  else
    L2_2 = mp
    L2_2 = L2_2.CLEAN
    return L2_2
  end
end
L2_2 = pe
L2_2 = L2_2.contains_va
L2_2 = L2_2(L3_3, L4_4)
if not L2_2 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = mp
L2_2 = L2_2.readprotection
L2_2(L3_3)
L2_2 = mp
L2_2 = L2_2.readfile
L2_2 = L2_2(L3_3, L4_4)
if L3_3 < 4096 then
  if L3_3 > 16777216 then
    return L3_3
  end
end
for L6_6 in L3_3(L4_4, L5_5) do
  if #L6_6 > 4096 then
    mp.set_mpattribute("//MpBase64DecodeLongLines")
    mp.vfo_add_buffer(L6_6, "[Obfuscator.AO]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
    break
  end
end
return L3_3
