local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
L0_0 = {
  L1_1,
  L2_2,
  L3_3,
  L4_4,
  L5_5,
  "ALF:Trojan:Win32/ChocoFrag.B!dha",
  "ALFPER:Trojan:Win32/ChocoFrag.C!dha",
  "ALFPER:Trojan:Win32/Cigril.C!dha",
  "ALFPER:Trojan:Win64/CashLock.C!dha",
  "ALFPER:Trojan:Win32/Cigril.A.enc!dha",
  "ALF:HackTool:Win32/TripWary.E!dha",
  "ALF:HackTool:Win32/Totkpf.B!dha",
  "ALFPER:Trojan:Win64/BackBumper.C!dha"
}
L4_4 = "ALFPER:Trojan:Win32/Renofloss.N!dha"
L5_5 = "ALFPER:Trojan:Win32/KeySnipe.A"
for L4_4, L5_5 in L1_1(L2_2) do
  if mp.get_mpattribute(L5_5) then
    return mp.INFECTED
  end
end
return L1_1
