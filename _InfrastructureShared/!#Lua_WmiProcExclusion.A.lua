local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.SCANREASON_AMSI
if L0_0 == L1_1 then
  L1_1 = mp
  L1_1 = L1_1.get_contextdata
  L1_1 = L1_1(mp.CONTEXT_DATA_PROCESSNAME)
  if not L1_1 then
    return mp.CLEAN
  end
  L1_1 = string.lower(L1_1)
  if L1_1:find("ccmexec.exe", 1, true) or L1_1:find("tiworker.exe", 1, true) or L1_1:find("taniumclient.exe", 1, true) or L1_1:find("lansweeperservice.exe", 1, true) or L1_1:find("rg_supervision.exe", 1, true) or L1_1:find("svchost.exe", 1, true) or L1_1:find("wscript.exe", 1, true) or L1_1:find("cscript.exe", 1, true) or L1_1:find("taniumcx.exe", 1, true) then
    return mp.INFECTED
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
