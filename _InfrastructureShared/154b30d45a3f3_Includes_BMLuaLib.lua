local L0_0, L1_1
L0_0 = bm
L0_0 = L0_0.get_imagepath
L0_0 = L0_0()
if L0_0 ~= nil then
  L1_1 = string
  L1_1 = L1_1.len
  L1_1 = L1_1(L0_0)
  if L1_1 >= 15 then
    L1_1 = {}
    L1_1["cmd.exe"] = true
    L1_1["powershell.exe"] = true
    L1_1["cscript.exe"] = true
    L1_1["wscript.exe"] = true
    L1_1["mshta.exe"] = true
    L1_1["pwsh.exe"] = true
    L1_1["rundll32.exe"] = true
    L1_1["regsvr32.exe"] = true
    L1_1["regasm.exe"] = true
    L1_1["regsvcs.exe"] = true
    L1_1["officesvcmgr.exe"] = true
    L1_1["officeclicktorun.exe"] = true
    L1_1["integrator.exe"] = true
    if L1_1[string.lower(L0_0:match("\\([^\\]+)$"))] then
      return mp.CLEAN
    end
  end
end
L1_1 = nil
if this_sigattrlog[14].matched and this_sigattrlog[14].utf8p2 ~= nil then
  L1_1 = this_sigattrlog[14].utf8p2
end
if L1_1 ~= nil then
  bm_AddRelatedFileFromCommandLine(L1_1, nil, nil, 1)
  return mp.INFECTED
end
return mp.CLEAN
