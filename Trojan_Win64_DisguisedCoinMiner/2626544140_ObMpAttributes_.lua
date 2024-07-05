local L0_0, L1_1
L0_0 = {}
L0_0["appmodule.exe"] = true
L0_0["kernel.exe"] = true
L0_0["microsofthost.exe"] = true
L0_0["network02.exe"] = true
L0_0["svchost.exe"] = true
L0_0["svchost.exe.exe"] = true
L0_0["syswow.exe"] = true
L0_0["uihost32.exe"] = true
L0_0["uihost64.exe"] = true
L0_0["window.exe"] = true
L0_0["wxm.exe"] = true
L1_1 = peattributes
L1_1 = L1_1.is_process
if L1_1 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = string
L1_1 = L1_1.lower
L1_1 = L1_1(mp.getfilename())
if L1_1:match("(.+\\)([^\\]+)$") ~= nil and L0_0[L1_1:match("(.+\\)([^\\]+)$")] then
  return mp.INFECTED
end
return mp.CLEAN
