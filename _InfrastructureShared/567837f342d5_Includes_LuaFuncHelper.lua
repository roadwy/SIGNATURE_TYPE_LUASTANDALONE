local L0_0
L0_0 = mp
L0_0 = L0_0.getfilename
L0_0 = L0_0(mp.FILEPATH_QUERY_FULL)
if CheckVulnerableUEFIImage(L0_0, "!#TEL:Trojan:UEFI/InsyVul.O") then
  return mp.INFECTED
end
return mp.CLEAN
