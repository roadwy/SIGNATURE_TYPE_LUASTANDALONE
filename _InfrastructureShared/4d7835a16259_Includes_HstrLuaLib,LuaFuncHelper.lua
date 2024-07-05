local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8
L0_0 = mp
L0_0 = L0_0.GetHSTRCallerId
L0_0 = L0_0()
L1_1 = mp
L1_1 = L1_1.HSTR_CALLER_SMS
if L0_0 ~= L1_1 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.GetSMSProcArchitecture
L0_0 = L0_0()
L1_1 = mp
L1_1 = L1_1.SMS_PROC_ARCH_X64
if L0_0 == L1_1 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.GetSMSMemRanges
L0_0 = L0_0()
L1_1 = mp
L1_1 = L1_1.hstr_full_log
L1_1 = L1_1()
L2_2 = 0
for L6_6, L7_7 in L3_3(L4_4) do
  L8_8 = L7_7.matched
  if L8_8 then
    L8_8 = isSafeToRead
    L8_8 = L8_8(L0_0, L7_7.VA, 4)
    if L8_8 then
      L8_8 = mp
      L8_8 = L8_8.ReadProcMem
      L8_8 = L8_8(L7_7.VA, 4)
      if mp.readu_u32(L8_8, 1) == 8 then
        L2_2 = L7_7.VA + 1
        break
      end
    end
  end
end
if L2_2 == 0 then
  return L3_3
end
L6_6 = L2_2
if L3_3 then
elseif L5_5 < 3000 then
  return L5_5
end
return L5_5
