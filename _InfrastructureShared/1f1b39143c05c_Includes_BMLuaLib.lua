local L0_0, L1_1, L2_2, L3_3
L1_1 = false
L2_2 = 0
L3_3 = this_sigattrlog
L3_3 = L3_3[4]
L3_3 = L3_3.matched
if L3_3 then
  L3_3 = this_sigattrlog
  L3_3 = L3_3[4]
  L3_3 = L3_3.utf8p2
  if L3_3 ~= nil then
    L3_3 = this_sigattrlog
    L3_3 = L3_3[4]
    L3_3 = L3_3.utf8p2
    L3_3 = L3_3.lower
    L3_3 = L3_3(L3_3)
    L0_0 = L3_3
  end
else
  L3_3 = this_sigattrlog
  L3_3 = L3_3[5]
  L3_3 = L3_3.matched
  if L3_3 then
    L3_3 = this_sigattrlog
    L3_3 = L3_3[5]
    L3_3 = L3_3.utf8p2
    if L3_3 ~= nil then
      L3_3 = this_sigattrlog
      L3_3 = L3_3[5]
      L3_3 = L3_3.utf8p2
      L3_3 = L3_3.lower
      L3_3 = L3_3(L3_3)
      L0_0 = L3_3
    end
  end
end
L3_3 = isIEXfound
L3_3 = L3_3(L0_0)
if not L3_3 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = L0_0.len
L3_3 = L3_3(L0_0)
L2_2 = L3_3
if L2_2 > 400 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = "(?:gp|get-itemproperty).{0,10}(?:hkcu|hklm)"
L1_1, _ = MpCommon.StringRegExpSearch(L3_3, L0_0)
if L1_1 then
  return mp.INFECTED
end
return mp.CLEAN
