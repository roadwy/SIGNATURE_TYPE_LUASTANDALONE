local L0_0, L1_1, L2_2, L3_3
L0_0 = this_sigattrlog
L0_0 = L0_0[3]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[3]
  L0_0 = L0_0.utf8p1
  L1_1 = this_sigattrlog
  L1_1 = L1_1[3]
  L1_1 = L1_1.utf8p2
  if L0_0 == nil or L1_1 == nil then
    L2_2 = mp
    L2_2 = L2_2.CLEAN
    return L2_2
  end
  L2_2 = string
  L2_2 = L2_2.lower
  L3_3 = string
  L3_3 = L3_3.sub
  L3_3 = L3_3(L0_0, 0, 3)
  L2_2 = L2_2(L3_3, L3_3(L0_0, 0, 3))
  if L2_2 ~= nil then
    L3_3 = #L2_2
    if L3_3 == 3 then
      L3_3 = string
      L3_3 = L3_3.sub
      L3_3 = L3_3(L2_2, -2)
    end
  elseif L3_3 ~= ":\\" then
    L3_3 = mp
    L3_3 = L3_3.CLEAN
    return L3_3
  end
  L3_3 = string
  L3_3 = L3_3.lower
  L3_3 = L3_3(string.sub(L1_1, 0, 3))
  if L3_3 == nil or #L3_3 ~= 3 or string.sub(L3_3, -2) ~= ":\\" then
    return mp.CLEAN
  end
  if L2_2 == L3_3 then
    return mp.CLEAN
  end
  if sysio.IsFileExists(L1_1) then
    mp.ReportLowfi(L1_1, 1104973016)
  end
  return mp.INFECTED
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
