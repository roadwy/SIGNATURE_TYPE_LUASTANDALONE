local L0_0
L0_0 = this_sigattrlog
L0_0 = L0_0[1]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = string
  L0_0 = L0_0.lower
  L0_0 = L0_0(bm.get_imagepath())
  if L0_0 == nil or 1 > string.len(L0_0) then
    return mp.CLEAN
  end
  if string.find(L0_0, "\\cmd.exe", 1, true) or string.find(L0_0, "\\powershell.exe", 1, true) or string.find(L0_0, "\\pwsh.exe", 1, true) or string.find(L0_0, "\\powershell_ise.exe", 1, true) or string.find(L0_0, "\\pangphip.exe", 1, true) or string.find(L0_0, "\\log-agent.exe", 1, true) or string.find(L0_0, "\\ossec-agent.exe", 1, true) or string.find(L0_0, ":\\windows\\assembly\\", 1, true) then
    return mp.CLEAN
  end
  return mp.INFECTED
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
