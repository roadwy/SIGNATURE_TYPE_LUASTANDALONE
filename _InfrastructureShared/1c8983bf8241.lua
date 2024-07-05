local L0_0, L1_1, L2_2, L3_3, L4_4
function L0_0(A0_5)
  local L1_6
  L1_6 = A0_5 / 4
  L1_6 = L1_6 * 4
  if L1_6 == A0_5 then
    L1_6 = true
    return L1_6
  end
  L1_6 = false
  return L1_6
end
is_leap_year = L0_0
function L0_0(A0_7)
  local L1_8, L2_9, L3_10, L4_11, L5_12, L6_13, L7_14, L8_15, L9_16, L10_17
  L1_8 = 1970
  L2_9 = 86400
  L3_10 = 365 * L2_9
  L4_11 = 0
  L5_12 = false
  while A0_7 > L4_11 do
    L6_13 = is_leap_year
    L7_14 = L1_8
    L6_13 = L6_13(L7_14)
    L5_12 = L6_13
    if L5_12 then
      L6_13 = L4_11 + L3_10
      L4_11 = L6_13 + L2_9
    else
      L4_11 = L4_11 + L3_10
    end
    L1_8 = L1_8 + 1
  end
  L1_8 = L1_8 - 1
  if L5_12 then
    L6_13 = L3_10 + L2_9
    L4_11 = L4_11 - L6_13
  else
    L4_11 = L4_11 - L3_10
  end
  A0_7 = A0_7 - L4_11
  L6_13 = {
    L7_14,
    L8_15,
    L9_16,
    L10_17,
    151,
    181,
    212,
    243,
    273,
    304,
    334,
    365
  }
  L7_14 = 30
  L8_15 = 59
  L9_16 = 90
  L10_17 = 120
  L7_14 = {
    L8_15,
    L9_16,
    L10_17,
    119,
    150,
    180,
    211,
    242,
    272,
    303,
    333,
    364
  }
  L8_15 = 30
  L9_16 = 58
  L10_17 = 89
  L8_15 = A0_7 / L2_9
  L9_16 = 1
  L10_17 = 1
  if L5_12 then
    for _FORV_15_, _FORV_16_ in pairs(L6_13) do
      if _FORV_16_ >= L8_15 then
        L9_16 = _FORV_15_
        L10_17 = L8_15 - 0 + 1
        break
      end
    end
  else
    for _FORV_15_, _FORV_16_ in pairs(L7_14) do
      if _FORV_16_ >= L8_15 then
        L9_16 = _FORV_15_
        L10_17 = L8_15 - (_FORV_16_ + 1) + 1
        break
      end
    end
  end
  return L1_8, L9_16, L10_17
end
timestamp_to_date = L0_0
L0_0 = mp
L0_0 = L0_0.readu_u32
L1_1 = pe
L1_1 = L1_1.mmap_va
L2_2 = mp
L2_2 = L2_2.readu_u32
L3_3 = pe
L3_3 = L3_3.mmap_va
L4_4 = pevars
L4_4 = L4_4.sigaddr
L4_4 = L4_4 + 9
L3_3 = L3_3(L4_4, 4)
L4_4 = 1
L2_2 = L2_2(L3_3, L4_4)
L3_3 = 4
L1_1 = L1_1(L2_2, L3_3)
L2_2 = 1
L0_0 = L0_0(L1_1, L2_2)
L1_1 = pe
L1_1 = L1_1.get_api_id
L2_2 = L0_0
L1_1 = L1_1(L2_2)
if L1_1 ~= 1269389306 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = pehdr
L2_2 = L2_2.TimeDateStamp
if L2_2 == 0 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = timestamp_to_date
L4_4 = L2_2
L4_4 = L3_3(L4_4)
pe.mmap_patch_va(pevars.sigaddr + 17, "\184" .. string.char(L4_4) .. "\000")
return mp.INFECTED
