local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16, L17_17
L0_0 = bm
L0_0 = L0_0.GetSignatureMatchDuration
L0_0 = L0_0()
if L0_0 > 50000000 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0, L1_1, L2_2 = nil, nil, nil
L3_3 = false
L4_4 = false
L5_5 = 2
L6_6 = 2
L7_7 = 30
L8_8 = 5
L9_9 = "DataRemoval"
L10_10 = nil
L11_11 = this_sigattrlog
L11_11 = L11_11[1]
L11_11 = L11_11.matched
if L11_11 then
  L11_11 = this_sigattrlog
  L11_11 = L11_11[1]
  L11_11 = L11_11.wp2
  if L11_11 ~= nil then
    L11_11 = this_sigattrlog
    L11_11 = L11_11[1]
    L1_1 = L11_11.ppid
    L11_11 = string
    L11_11 = L11_11.lower
    L12_12 = this_sigattrlog
    L12_12 = L12_12[1]
    L12_12 = L12_12.utf8p2
    L11_11 = L11_11(L12_12)
    L2_2 = L11_11
    L0_0 = "rm"
    L11_11 = L9_9
    L12_12 = "_rm_"
    L10_10 = L11_11 .. L12_12
  end
else
  L11_11 = this_sigattrlog
  L11_11 = L11_11[2]
  L11_11 = L11_11.matched
  if L11_11 then
    L11_11 = this_sigattrlog
    L11_11 = L11_11[2]
    L11_11 = L11_11.wp2
    if L11_11 ~= nil then
      L11_11 = this_sigattrlog
      L11_11 = L11_11[2]
      L1_1 = L11_11.ppid
      L11_11 = string
      L11_11 = L11_11.lower
      L12_12 = this_sigattrlog
      L12_12 = L12_12[2]
      L12_12 = L12_12.utf8p2
      L11_11 = L11_11(L12_12)
      L2_2 = L11_11
      L0_0 = "rm"
      L11_11 = L9_9
      L12_12 = "_rm_"
      L10_10 = L11_11 .. L12_12
    end
  else
    L11_11 = this_sigattrlog
    L11_11 = L11_11[3]
    L11_11 = L11_11.matched
    if L11_11 then
      L11_11 = this_sigattrlog
      L11_11 = L11_11[3]
      L11_11 = L11_11.wp2
      if L11_11 ~= nil then
        L11_11 = this_sigattrlog
        L11_11 = L11_11[3]
        L1_1 = L11_11.ppid
        L11_11 = string
        L11_11 = L11_11.lower
        L12_12 = this_sigattrlog
        L12_12 = L12_12[3]
        L12_12 = L12_12.utf8p2
        L11_11 = L11_11(L12_12)
        L2_2 = L11_11
        L0_0 = "rm"
        L11_11 = L9_9
        L12_12 = "_rm_"
        L10_10 = L11_11 .. L12_12
      end
    else
      L11_11 = this_sigattrlog
      L11_11 = L11_11[4]
      L11_11 = L11_11.matched
      if L11_11 then
        L11_11 = this_sigattrlog
        L11_11 = L11_11[4]
        L11_11 = L11_11.wp2
        if L11_11 ~= nil then
          L11_11 = this_sigattrlog
          L11_11 = L11_11[4]
          L1_1 = L11_11.ppid
          L11_11 = string
          L11_11 = L11_11.lower
          L12_12 = this_sigattrlog
          L12_12 = L12_12[4]
          L12_12 = L12_12.utf8p2
          L11_11 = L11_11(L12_12)
          L2_2 = L11_11
          L0_0 = "rm"
          L11_11 = L9_9
          L12_12 = "_rm_"
          L10_10 = L11_11 .. L12_12
        end
      end
    end
  end
end
if L1_1 == nil or L2_2 == nil or L2_2 == L0_0 or L2_2 == "" then
  L11_11 = mp
  L11_11 = L11_11.CLEAN
  return L11_11
end
L11_11 = L10_10
L12_12 = "Path_"
L11_11 = L11_11 .. L12_12 .. L13_13
L12_12 = mp
L12_12 = L12_12.GetExecutablesFromCommandLine
L12_12 = L12_12(L13_13)
for L16_16, L17_17 in L13_13(L14_14) do
  if string.find(L17_17, "rm ", 1, true) == nil and IsPathIncludedLinuxRansomCheck(L17_17) then
    L3_3 = true
    if ValidateUniqueRQThreshold(L11_11, L8_8, L7_7, L17_17, "", L6_6) then
      L4_4 = true
    end
  end
end
if L3_3 then
  L16_16 = L8_8
  L17_17 = L7_7
  if L14_14 then
    L16_16 = "T1485"
    L17_17 = "Impact_DataDestruction"
    L14_14(L15_15, L16_16, L17_17)
    return L14_14
  end
  if L4_4 then
    L16_16 = "T1485"
    L17_17 = "Impact_DataDestruction"
    L14_14(L15_15, L16_16, L17_17)
    return L14_14
  end
end
return L14_14
