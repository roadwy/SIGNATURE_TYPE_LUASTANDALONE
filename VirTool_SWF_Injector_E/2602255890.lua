local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
L0_0 = mp
L0_0 = L0_0.bitand
L1_1 = mp
L1_1 = L1_1.readu_u32
L1_1 = L1_1(L2_2, L3_3)
L0_0 = L0_0(L1_1, L2_2)
if L0_0 ~= 5461830 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = {}
L0_0["SCRIPT:FlashExp_90eb7133c9"] = 3
L0_0["SCRIPT:FlashExp_241c61c3e8"] = 3
L0_0["SCRIPT:FlashExp_21212121212121212121"] = 2
L0_0["SCRIPT:FlashExp_90909090909090909090"] = 2
L0_0["SCRIPT:FlashExp_loadbytes"] = 1
L0_0["SCRIPT:FlashExp_enter_frame"] = 1
L0_0["SCRIPT:FlashExp_gotoandplay"] = 1
L0_0["SCRIPT:FlashExp_readunsignedbyte"] = 1
L0_0["SCRIPT:FlashExp_writebyte"] = 1
L1_1 = 0
for L5_5, _FORV_6_ in L2_2(L3_3) do
  if mp.get_mpattribute(L5_5) then
    L1_1 = L1_1 + _FORV_6_
  end
end
if L1_1 >= 10 then
  return L2_2
end
return L2_2
