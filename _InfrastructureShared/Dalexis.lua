local L0_0
function L0_0(A0_1)
  local L1_2, L2_3, L3_4, L4_5, L5_6, L6_7, L7_8
  L1_2 = sysio
  L1_2 = L1_2.GetProcessFromFileName
  L1_2 = L1_2(L2_3)
  for L5_6, L6_7 in L2_3(L3_4) do
    L7_8 = string
    L7_8 = L7_8.lower
    L7_8 = L7_8(sysio.GetFileNameFromProcess(string.format("pid:%d,ProcessStart:%u", L6_7.pid, L6_7.starttime)))
    if string.sub(L7_8, -4) == ".scr" then
      sysio.DeleteFile(L7_8)
    end
  end
end
RemoveDalexisBaseFile = L0_0
L0_0 = Remediation
L0_0 = L0_0.Threat
if L0_0.Active and string.match(L0_0.Name, "TrojanDownloader:Win32/Dalexis") then
  for _FORV_4_, _FORV_5_ in pairs(L0_0.Resources) do
    if _FORV_5_.Schema == "process" then
      RemoveDalexisBaseFile(_FORV_5_.Path)
    end
  end
end
