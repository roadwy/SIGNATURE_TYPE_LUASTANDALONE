local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15
L2_2 = false
L3_3 = this_sigattrlog
L3_3 = L3_3[1]
L3_3 = L3_3.matched
if L3_3 then
  L3_3 = this_sigattrlog
  L3_3 = L3_3[1]
  L3_3 = L3_3.utf8p2
  if L3_3 ~= nil then
    L3_3 = this_sigattrlog
    L3_3 = L3_3[1]
    L0_0 = L3_3.ppid
    L3_3 = string
    L3_3 = L3_3.lower
    L4_4 = this_sigattrlog
    L4_4 = L4_4[1]
    L4_4 = L4_4.utf8p2
    L3_3 = L3_3(L4_4)
    L1_1 = L3_3
  end
end
L3_3 = this_sigattrlog
L3_3 = L3_3[2]
L3_3 = L3_3.matched
if L3_3 then
  L3_3 = this_sigattrlog
  L3_3 = L3_3[2]
  L3_3 = L3_3.utf8p2
  if L3_3 ~= nil then
    L3_3 = this_sigattrlog
    L3_3 = L3_3[2]
    L0_0 = L3_3.ppid
    L3_3 = string
    L3_3 = L3_3.lower
    L4_4 = this_sigattrlog
    L4_4 = L4_4[2]
    L4_4 = L4_4.utf8p2
    L3_3 = L3_3(L4_4)
    L1_1 = L3_3
  end
end
if L0_0 == nil or L1_1 == nil then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = GetRealPidForScenario
L4_4 = L0_0
L3_3 = L3_3(L4_4)
L0_0 = L3_3
L4_4 = L1_1
L3_3 = L1_1.find
L3_3 = L3_3(L4_4, L5_5)
if not L3_3 then
  L4_4 = L1_1
  L3_3 = L1_1.find
  L3_3 = L3_3(L4_4, L5_5)
elseif L3_3 then
  L3_3 = bm
  L3_3 = L3_3.get_process_relationships
  L4_4 = L3_3()
  for L8_8, L9_9 in L5_5(L6_6) do
    L10_10 = IsPidObservedGlobal
    L11_11 = L9_9.ppid
    L10_10 = L10_10(L11_11)
    if L10_10 then
      L10_10 = GetTacticsTableForPid
      L11_11 = L9_9.ppid
      L10_10 = L10_10(L11_11)
      L11_11 = GetTechniquesTableForPid
      L11_11 = L11_11(L12_12)
      if L10_10 ~= nil then
        for L15_15, _FORV_16_ in L12_12(L13_13) do
          AddTacticForPid(L0_0, L15_15)
          L2_2 = true
        end
      end
      if L11_11 ~= nil then
        for L15_15, _FORV_16_ in L12_12(L13_13) do
          AddTechniqueForPid(L0_0, L15_15)
          L2_2 = true
        end
      end
      L15_15 = "tt_to_child"
      L12_12(L13_13, L14_14, L15_15)
    end
  end
end
if L2_2 then
  L3_3 = TrackPidAndTechniqueBM
  L4_4 = L0_0
  L3_3(L4_4, L5_5, L6_6)
  L3_3 = mp
  L3_3 = L3_3.INFECTED
  return L3_3
end
L3_3 = mp
L3_3 = L3_3.CLEAN
return L3_3
