local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10
L1_1 = this_sigattrlog
L1_1 = L1_1[2]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[2]
  L1_1 = L1_1.utf8p1
  if L1_1 ~= nil then
    L1_1 = this_sigattrlog
    L1_1 = L1_1[2]
    L0_0 = L1_1.utf8p1
  end
end
L1_1 = ".vbs"
if L0_0 == nil then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = string
L2_2 = L2_2.gsub
L3_3 = L0_0
L4_4 = "\\"
L5_5 = ""
L3_3 = L2_2(L3_3, L4_4, L5_5)
if L3_3 == nil or L3_3 ~= 1 then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = string
L4_4 = L4_4.lower
L5_5 = string
L5_5 = L5_5.sub
L10_10 = L5_5(L6_6, L7_7)
L4_4 = L4_4(L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L5_5(L6_6, L7_7))
if L4_4 ~= L1_1 then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = nil
L5_5 = this_sigattrlog
L5_5 = L5_5[1]
L5_5 = L5_5.matched
if L5_5 then
  L5_5 = this_sigattrlog
  L5_5 = L5_5[1]
  L5_5 = L5_5.utf8p2
  if L5_5 ~= nil then
    L5_5 = this_sigattrlog
    L5_5 = L5_5[1]
    L4_4 = L5_5.utf8p2
  end
end
if L4_4 ~= nil then
  L5_5 = mp
  L5_5 = L5_5.GetExecutablesFromCommandLine
  L5_5 = L5_5(L6_6)
  for L9_9, L10_10 in L6_6(L7_7) do
    if string.find(string.lower(L10_10), "\\javaw.exe") == nil and sysio.IsFileExists(L10_10) then
      bm.add_threat_file(L10_10)
    end
  end
end
L5_5 = mp
L5_5 = L5_5.INFECTED
return L5_5
