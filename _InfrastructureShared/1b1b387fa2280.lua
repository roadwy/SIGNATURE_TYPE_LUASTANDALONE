local L0_0, L1_1
L1_1 = this_sigattrlog
L1_1 = L1_1[8]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[8]
  L1_1 = L1_1.utf8p1
  if L1_1 ~= nil then
    L1_1 = this_sigattrlog
    L1_1 = L1_1[8]
    L0_0 = L1_1.utf8p1
  end
end
if L0_0 ~= nil then
  L1_1 = mp
  L1_1 = L1_1.ContextualExpandEnvironmentVariables
  L1_1 = L1_1(L0_0)
  if L1_1 ~= nil and sysio.IsFileExists(L1_1) then
    mp.ReportLowfi(L1_1, 3307547556)
  end
end
L1_1 = mp
L1_1 = L1_1.INFECTED
return L1_1
