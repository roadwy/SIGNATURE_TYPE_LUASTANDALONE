local L0_0, L1_1
L0_0 = sysio
L0_0 = L0_0.RegOpenKey
L1_1 = "HKLM\\SOFTWARE\\Microsoft\\Windows Defender\\Features"
L0_0 = L0_0(L1_1)
if L0_0 then
  L1_1 = sysio
  L1_1 = L1_1.GetRegValueAsDword
  L1_1 = L1_1(L0_0, "TamperProtection")
  if L1_1 and mp.bitand(L1_1, 1) == 1 then
    return mp.SUSPICIOUS
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
