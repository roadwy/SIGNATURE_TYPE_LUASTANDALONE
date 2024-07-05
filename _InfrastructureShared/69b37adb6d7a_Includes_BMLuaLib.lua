local L0_0, L1_1
L0_0 = this_sigattrlog
L0_0 = L0_0[4]
L0_0 = L0_0.matched
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = this_sigattrlog
L0_0 = L0_0[4]
L0_0 = L0_0.utf8p1
if L0_0 ~= nil then
  L1_1 = #L0_0
elseif L1_1 < 3 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = string
L1_1 = L1_1.lower
L1_1 = L1_1(L0_0)
L0_0 = L1_1
L1_1 = string
L1_1 = L1_1.find
L1_1 = L1_1(L0_0, "totalrecoveryprosetup.exe", 1, true)
if L1_1 == nil then
  L1_1 = string
  L1_1 = L1_1.find
  L1_1 = L1_1(L0_0, "miniconda3.+windows%-x86_64.exe")
  if L1_1 == nil then
    L1_1 = string
    L1_1 = L1_1.find
    L1_1 = L1_1(L0_0, "llvm%-.+%-win%d%d%.exe$")
    if L1_1 == nil then
      L1_1 = string
      L1_1 = L1_1.find
      L1_1 = L1_1(L0_0, "gimp%-.+%.exe$")
      if L1_1 == nil then
        L1_1 = string
        L1_1 = L1_1.find
        L1_1 = L1_1(L0_0, "\\microsoft\\windows defender.+\\datacollection\\")
      end
    end
  end
elseif L1_1 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = IsSenseRelatedProc
L1_1 = L1_1()
if L1_1 == true then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.ContextualExpandEnvironmentVariables
L1_1 = L1_1(L0_0)
if not sysio.IsFileExists(L1_1) or mp.IsKnownFriendlyFile(L1_1, true, false) == true then
  return mp.CLEAN
end
mp.ReportLowfi(L1_1, 31011691)
return mp.INFECTED
