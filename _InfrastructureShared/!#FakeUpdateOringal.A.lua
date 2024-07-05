local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.get_mpattribute
L1_1 = "Trojan:Script/FakeUpdates.A"
L0_0 = L0_0(L1_1)
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.get_mpattribute
  L1_1 = "Trojan:Script/FakeUpdates.C"
  L0_0 = L0_0(L1_1)
  if not L0_0 then
    L0_0 = mp
    L0_0 = L0_0.get_mpattribute
    L1_1 = "Backdoor:JS/FakeUpdates.C!dha"
    L0_0 = L0_0(L1_1)
    if not L0_0 then
      L0_0 = mp
      L0_0 = L0_0.get_mpattribute
      L1_1 = "Backdoor:JS/FakeUpdates.D!dha"
      L0_0 = L0_0(L1_1)
      if not L0_0 then
        L0_0 = mp
        L0_0 = L0_0.CLEAN
        return L0_0
      end
    end
  end
end
L0_0 = pcall
L1_1 = mp
L1_1 = L1_1.get_contextdata
L1_1 = L0_0(L1_1, mp.CONTEXT_DATA_AMSI_CONTENTNAME)
if L0_0 and sysio.IsFileExists(L1_1) and not mp.IsKnownFriendlyFile(L1_1, false, false) then
  mp.ReportLowfi(L1_1, 73467367)
  return mp.CLEAN
end
return mp.CLEAN
