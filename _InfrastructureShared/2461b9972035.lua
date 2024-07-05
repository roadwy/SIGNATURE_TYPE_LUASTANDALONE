local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
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
if L0_0 ~= L1_1 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.GetPEBAddress
L0_0 = L0_0()
L1_1 = mp
L1_1 = L1_1.ReadProcMem
L2_2 = L0_0 + 16
L3_3 = 8
L1_1 = L1_1(L2_2, L3_3)
if not L1_1 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = mp
L2_2 = L2_2.readu_u64
L3_3 = L1_1
L4_4 = 1
L2_2 = L2_2(L3_3, L4_4)
L3_3 = mp
L3_3 = L3_3.GetSMSMappedFilename
L4_4 = L2_2
L3_3 = L3_3(L4_4)
if not L3_3 then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = string
L4_4 = L4_4.find
L5_5 = L3_3
L6_6 = "conhost.exe"
L7_7 = -11
L4_4 = L4_4(L5_5, L6_6, L7_7, true)
if not L4_4 then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = mp
L4_4 = L4_4.ReadProcMem
L5_5 = L2_2
L6_6 = 1024
L4_4 = L4_4(L5_5, L6_6)
L1_1 = L4_4
if not L1_1 then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = mp
L4_4 = L4_4.readu_u32
L5_5 = L1_1
L6_6 = 61
L4_4 = L4_4(L5_5, L6_6)
if L4_4 > 896 then
  L5_5 = mp
  L5_5 = L5_5.CLEAN
  return L5_5
end
L5_5 = mp
L5_5 = L5_5.readu_u32
L6_6 = L1_1
L7_7 = 1 + L4_4
L5_5 = L5_5(L6_6, L7_7)
if L5_5 ~= 17744 then
  L6_6 = mp
  L6_6 = L6_6.CLEAN
  return L6_6
end
L6_6 = mp
L6_6 = L6_6.readu_u32
L7_7 = L1_1
L6_6 = L6_6(L7_7, 1 + L4_4 + 80)
L6_6 = L2_2 + L6_6
L7_7 = mp
L7_7 = L7_7.hstr_full_log
L7_7 = L7_7()
for _FORV_11_, _FORV_12_ in ipairs(L7_7) do
  if _FORV_12_.matched and _FORV_12_.VA and (L2_2 > _FORV_12_.VA or L6_6 <= _FORV_12_.VA) then
    return mp.INFECTED
  end
end
return mp.CLEAN
