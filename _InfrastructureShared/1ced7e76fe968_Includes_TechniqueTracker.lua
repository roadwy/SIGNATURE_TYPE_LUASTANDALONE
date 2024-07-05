local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = mp
L0_0 = L0_0.hstr_full_log
L0_0 = L0_0()
if L0_0 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = 0
L2_2 = L0_0[1]
L2_2 = L2_2.matched
if L2_2 then
  L1_1 = L1_1 + 1
end
L2_2 = L0_0[2]
L2_2 = L2_2.matched
if L2_2 then
  L1_1 = L1_1 + 1
end
L2_2 = 0
L3_3 = L0_0[3]
L3_3 = L3_3.matched
if L3_3 then
  L2_2 = L2_2 + 1
end
L3_3 = L0_0[4]
L3_3 = L3_3.matched
if L3_3 then
  L2_2 = L2_2 + 1
end
L3_3 = L0_0[5]
L3_3 = L3_3.matched
if L3_3 then
  L2_2 = L2_2 + 1
end
L3_3 = 0
L4_4 = L0_0[6]
L4_4 = L4_4.matched
if L4_4 then
  L3_3 = L3_3 + 1
end
L4_4 = L0_0[7]
L4_4 = L4_4.matched
if L4_4 then
  L3_3 = L3_3 + 1
end
L4_4 = L0_0[8]
L4_4 = L4_4.matched
if L4_4 then
  L3_3 = L3_3 + 1
end
L4_4 = L0_0[9]
L4_4 = L4_4.matched
if L4_4 then
  L3_3 = L3_3 + 1
end
L4_4 = L0_0[10]
L4_4 = L4_4.matched
if L4_4 then
  L3_3 = L3_3 + 1
end
L4_4 = L0_0[11]
L4_4 = L4_4.matched
if L4_4 then
  L3_3 = L3_3 + 1
end
L4_4 = L0_0[12]
L4_4 = L4_4.matched
if L4_4 then
  L3_3 = L3_3 + 1
end
L4_4 = L0_0[13]
L4_4 = L4_4.matched
if L4_4 then
  L3_3 = L3_3 + 1
end
if L1_1 >= 1 and L2_2 >= 1 and L3_3 >= 1 then
  L4_4 = {
    "sqlservr.exe",
    "sqlps.exe",
    "sqlagent.exe"
  }
  if IsProcNameInParentProcessTree("cmdhstr", L4_4) then
    return mp.INFECTED
  end
end
L4_4 = mp
L4_4 = L4_4.CLEAN
return L4_4
