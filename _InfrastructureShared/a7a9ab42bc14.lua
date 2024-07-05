local L0_0, L1_1, L2_2, L3_3
L0_0 = nri
L0_0 = L0_0.GetSSLCertificate
L0_0 = L0_0()
if L0_0 then
  L1_1 = L0_0.Subject
  L2_2 = L0_0.Issuer
  if L1_1 == L2_2 then
    L1_1 = L0_0.Subject
    L2_2 = string
    L2_2 = L2_2.match
    L3_3 = L1_1
    L3_3 = L2_2(L3_3, ", OU=(.+), CN=(.+), EMAIL=(.+)")
    if L2_2(L3_3, ", OU=(.+), CN=(.+), EMAIL=(.+)") == L2_2 .. "@" .. L3_3 then
      return mp.INFECTED
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
