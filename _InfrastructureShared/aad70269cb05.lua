local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.GetScannedPPID
L0_0 = L0_0()
if L0_0 == "" or L0_0 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.GetProcessCommandLine
L1_1 = L1_1(L0_0)
if L1_1 == "" or L1_1 == nil then
  return mp.CLEAN
end
L1_1 = string.lower(L1_1)
if L1_1:find("initializer\\bin\\release\\initializer.exe", 1, true) then
  return mp.CLEAN
end
if L1_1:find(":\\janetools\\jscheckpoint\\", 1, true) then
  return mp.CLEAN
end
return mp.LOWFI
