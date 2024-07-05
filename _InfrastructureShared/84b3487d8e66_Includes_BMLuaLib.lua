local L0_0, L1_1
L0_0 = IsActiveDirectoryRole
L0_0 = L0_0()
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = sysio
L0_0 = L0_0.RegOpenKey
L1_1 = "HKLM\\SYSTEM\\CurrentControlSet\\Services\\NTDS\\Parameters"
L0_0 = L0_0(L1_1)
if L0_0 ~= nil then
  L1_1 = sysio
  L1_1 = L1_1.GetRegValueAsString
  L1_1 = L1_1(L0_0, "DSA Database File")
  if L1_1 ~= nil and sysio.GetFileSize(L1_1) > 51200000 then
    return mp.INFECTED
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
