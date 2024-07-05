local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8
L0_0 = 30000000
L1_1 = bm
L1_1 = L1_1.GetSignatureMatchDuration
L1_1 = L1_1()
if L0_0 < L1_1 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = nil
L3_3 = this_sigattrlog
L3_3 = L3_3[6]
L3_3 = L3_3.matched
if L3_3 then
  L3_3 = this_sigattrlog
  L3_3 = L3_3[6]
  L3_3 = L3_3.wp2
  if L3_3 ~= nil then
    L3_3 = string
    L3_3 = L3_3.lower
    L3_3 = L3_3(L4_4)
    L2_2 = L3_3
  end
else
  L3_3 = this_sigattrlog
  L3_3 = L3_3[7]
  L3_3 = L3_3.matched
  if L3_3 then
    L3_3 = this_sigattrlog
    L3_3 = L3_3[7]
    L3_3 = L3_3.wp2
    if L3_3 ~= nil then
      L3_3 = string
      L3_3 = L3_3.lower
      L3_3 = L3_3(L4_4)
      L2_2 = L3_3
    end
  else
    L3_3 = this_sigattrlog
    L3_3 = L3_3[8]
    L3_3 = L3_3.matched
    if L3_3 then
      L3_3 = this_sigattrlog
      L3_3 = L3_3[8]
      L3_3 = L3_3.wp2
      if L3_3 ~= nil then
        L3_3 = string
        L3_3 = L3_3.lower
        L3_3 = L3_3(L4_4)
        L2_2 = L3_3
      end
    end
  end
end
if L2_2 ~= nil then
  L3_3 = mp
  L3_3 = L3_3.GetExecutablesFromCommandLine
  L3_3 = L3_3(L4_4)
  for L7_7, L8_8 in L4_4(L5_5) do
    L8_8 = mp.ContextualExpandEnvironmentVariables(L8_8)
    if sysio.IsFileExists(L8_8) then
      return mp.CLEAN
    end
  end
  L7_7 = 1
  L8_8 = true
  if not L4_4 then
    L7_7 = 1
    L8_8 = true
    if not L4_4 then
      L7_7 = 1
      L8_8 = true
    end
  elseif L4_4 then
    return L4_4
  end
end
L3_3 = reportRelatedBmHits
L3_3()
L3_3 = addRelatedProcess
L3_3()
L3_3 = mp
L3_3 = L3_3.INFECTED
return L3_3
