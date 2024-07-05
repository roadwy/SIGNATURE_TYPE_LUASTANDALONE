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
L0_0["SCRIPT:FlashExp_crypted_data"] = 1
L0_0["SCRIPT:FlashExp_rc4_key"] = 2
L0_0["SCRIPT:FlashExp_xor_key_int"] = 1
L0_0["SCRIPT:FlashExp_is_standalone"] = 1
L0_0["SCRIPT:FlashExp_is_win8_81_10"] = 2
L0_0["SCRIPT:FlashExp_is_win7_xp"] = 2
L0_0["SCRIPT:FlashExp_test_spray"] = 2
L0_0["SCRIPT:FlashExp_check_mem"] = 1
L0_0["SCRIPT:FlashExp_check_versions"] = 1
L0_0["SCRIPT:FlashExp_spray_obj"] = 2
L0_0["SCRIPT:FlashExp_get_big_ba"] = 1
L0_0["SCRIPT:FlashExp_skip_payload"] = 2
L0_0["SCRIPT:FlashExp_get_dummy_addr"] = 1
L0_0["SCRIPT:FlashExp_blowfish"] = 1
L0_0["SCRIPT:FlashExp_fill_obj1"] = 1
L0_0["SCRIPT:FlashExp_fill_obj4000"] = 2
L0_0["SCRIPT:FlashExp_surfstation"] = 2
L1_1 = 0
for L5_5, _FORV_6_ in L2_2(L3_3) do
  if mp.get_mpattribute(L5_5) then
    L1_1 = L1_1 + _FORV_6_
  end
end
if L1_1 >= 8 then
  return L2_2
end
return L2_2
