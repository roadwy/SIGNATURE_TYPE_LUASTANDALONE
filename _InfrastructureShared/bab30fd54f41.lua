local L0_0, L1_1
L1_1 = this_sigattrlog
L1_1 = L1_1[3]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[3]
  L0_0 = L1_1.utf8p1
else
  L1_1 = this_sigattrlog
  L1_1 = L1_1[4]
  L1_1 = L1_1.matched
  if L1_1 then
    L1_1 = this_sigattrlog
    L1_1 = L1_1[4]
    L0_0 = L1_1.utf8p1
  else
    L1_1 = this_sigattrlog
    L1_1 = L1_1[5]
    L1_1 = L1_1.matched
    if L1_1 then
      L1_1 = this_sigattrlog
      L1_1 = L1_1[5]
      L0_0 = L1_1.utf8p1
    end
  end
end
L1_1 = nil
if L0_0 ~= nil and 3 < string.len(L0_0) then
  L1_1 = mp.ContextualExpandEnvironmentVariables(L0_0)
  if L1_1 ~= nil and sysio.IsFileExists(L1_1) then
    mp.ReportLowfi(L1_1, 2706876984)
    bm.add_related_file(L1_1)
  end
end
return mp.INFECTED
