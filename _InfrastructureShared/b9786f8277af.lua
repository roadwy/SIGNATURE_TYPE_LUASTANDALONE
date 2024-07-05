local L0_0
L0_0 = mp
L0_0 = L0_0.get_mpattribute
L0_0 = L0_0("LUA:VeriatoCertClean")
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.get_mpattribute
  L0_0 = L0_0("Exception:MonitoringTool:Uninstaller:Veriato")
  if not L0_0 then
    L0_0 = mp
    L0_0 = L0_0.get_mpattribute
    L0_0 = L0_0("CERT:Clean:Veriato")
  end
elseif L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = hstrlog
L0_0 = L0_0[2]
L0_0 = L0_0.hitcount
if L0_0 > 3 then
  L0_0 = mp
  L0_0 = L0_0.HSTR_WEIGHT
  if L0_0 == 26 then
    L0_0 = mp
    L0_0 = L0_0.INFECTED
    return L0_0
  end
  L0_0 = pe
  L0_0 = L0_0.mmap_va
  L0_0 = L0_0(hstrlog[1].VA - 18, 16)
  if string.find(L0_0, "DenyListedUsers", 1, true) then
    return mp.INFECTED
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
