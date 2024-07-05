local L0_0, L1_1, L2_2
L0_0 = this_sigattrlog
L0_0 = L0_0[1]
L0_0 = L0_0.utf8p2
if L0_0 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = {}
L1_1["Trojan:Win32/TIImpersonation.A!sms"] = true
L1_1["Trojan:Win32/TIImpersonation.B!sms"] = true
L1_1["Trojan:Win32/W3WP_BackdoorDLL"] = true
L1_1["Trojan:Win32/ShellMemoryArtifacts.B"] = true
L1_1["Trojan:Win32/ShellMemoryArtifacts.C"] = true
L2_2 = L1_1[L0_0]
if L2_2 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = mp
L2_2 = L2_2.INFECTED
return L2_2
