local L0_0
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(bm.get_imagepath())
if L0_0 then
  if string.find(L0_0, "\\python", 1, true) then
    return mp.INFECTED
  end
  if string.find(L0_0, "\\program files", 1, true) or string.find(L0_0, "\\microsoft vs code\\", 1, true) or string.find(L0_0, "microsoft.watson", 1, true) or string.find(L0_0, "mpsigstub.exe", 1, true) or string.find(L0_0, "\\te.exe", 1, true) or string.find(L0_0, "\\te.processhost.exe", 1, true) or string.find(L0_0, "virtualboxvm.exe", 1, true) then
    return mp.CLEAN
  end
  return mp.INFECTED
end
return mp.CLEAN
