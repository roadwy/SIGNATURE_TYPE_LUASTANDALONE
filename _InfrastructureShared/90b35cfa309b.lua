local L0_0, L1_1, L2_2
L1_1 = this_sigattrlog
L1_1 = L1_1[1]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = string
  L1_1 = L1_1.lower
  L2_2 = this_sigattrlog
  L2_2 = L2_2[1]
  L2_2 = L2_2.utf8p2
  L1_1 = L1_1(L2_2)
  L0_0 = L1_1
end
if L0_0 ~= nil then
  L1_1 = string
  L1_1 = L1_1.lower
  L2_2 = MpCommon
  L2_2 = L2_2.ExpandEnvironmentVariables
  L2_2 = L2_2("%windir%")
  L1_1 = L1_1(L2_2, L2_2("%windir%"))
  L2_2 = L1_1
  L0_0 = L2_2 .. "\\system32\\" .. L0_0 .. ".dll"
  L2_2 = sysio
  L2_2 = L2_2.IsFileExists
  L2_2 = L2_2(L0_0)
  if L2_2 then
    L2_2 = bm
    L2_2 = L2_2.add_related_file
    L2_2(L0_0)
    L2_2 = mp
    L2_2 = L2_2.ReportLowfi
    L2_2(L0_0, 1552316616)
  end
  L2_2 = mp
  L2_2 = L2_2.INFECTED
  return L2_2
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
