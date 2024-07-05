local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14
L0_0 = bm
L0_0 = L0_0.get_current_process_startup_info
L0_0 = L0_0()
if L0_0 ~= nil then
  L1_1 = L0_0.ppid
elseif L1_1 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = "Env-"
L2_2 = L0_0.ppid
L1_1 = L1_1 .. L2_2
L2_2 = GetRollingQueue
L3_3 = L1_1
L2_2 = L2_2(L3_3)
if L2_2 ~= nil then
  L2_2 = mp
  L2_2 = L2_2.INFECTED
  return L2_2
end
L2_2 = string
L2_2 = L2_2.match
L3_3 = L0_0.ppid
L4_4 = "pid:(%w+),ProcessStart:(%w+)"
L3_3 = L2_2(L3_3, L4_4)
if L2_2 == nil then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = "/proc/"
L5_5 = L2_2
L6_6 = "/environ"
L4_4 = L4_4 .. L5_5 .. L6_6
L5_5 = sysio
L5_5 = L5_5.IsFileExists
L6_6 = L4_4
L5_5 = L5_5(L6_6)
if not L5_5 then
  L5_5 = mp
  L5_5 = L5_5.CLEAN
  return L5_5
end
L5_5 = sysio
L5_5 = L5_5.ReadFile
L6_6 = L4_4
L5_5 = L5_5(L6_6, L7_7, L8_8)
L6_6 = sysio
L6_6 = L6_6.GetLastResult
L6_6 = L6_6()
L6_6 = L6_6.Success
if not L6_6 then
  L6_6 = mp
  L6_6 = L6_6.CLEAN
  return L6_6
end
L6_6 = StringSplit
L6_6 = L6_6(L7_7, L8_8)
for L10_10, L11_11 in L7_7(L8_8) do
  L12_12 = string
  L12_12 = L12_12.find
  L13_13 = L11_11
  L14_14 = "="
  L12_12 = L12_12(L13_13, L14_14, 1, true)
  L13_13 = string
  L13_13 = L13_13.sub
  L14_14 = L11_11
  L13_13 = L13_13(L14_14, 1, L12_12 - 1)
  L14_14 = string
  L14_14 = L14_14.sub
  L14_14 = L14_14(L11_11, L12_12 + 1)
  AppendToRollingQueue(L1_1, L13_13, L14_14)
  if L13_13 == "LD_PRELOAD" or L13_13 == "LD_LIBRARY_PATH" or L13_13 == "LD_AUDIT" then
    bm.trigger_sig("EnvVar:" .. L13_13, L14_14)
  end
end
return L7_7
