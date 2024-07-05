local L0_0
L0_0 = mp
L0_0 = L0_0.get_mpattribute
L0_0 = L0_0("HSTR:VirTool:Win32/Obfuscator!InstalleRex")
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.get_mpattribute
  L0_0 = L0_0("HSTR:VirTool:Win32/Obfuscator!InstalleRex.B")
  if not L0_0 then
    L0_0 = mp
    L0_0 = L0_0.get_mpattribute
    L0_0 = L0_0("HSTR:VirTool:Win32/Obfuscator!InstalleRex.C")
    if not L0_0 then
      L0_0 = mp
      L0_0 = L0_0.get_mpattribute
      L0_0 = L0_0("HSTR:VirTool:Win32/Obfuscator!InstalleRex.D")
    end
  end
elseif L0_0 then
  L0_0 = string
  L0_0 = L0_0.lower
  L0_0 = L0_0(mp.getfilename())
  if string.sub(L0_0, -4) == ".exe" and (string.find(L0_0, "\\temp\\", 1, true) or string.find(L0_0, "\\downloads\\", 1, true) or string.match(L0_0, "\\all users\\application data\\{%x%x%x%x%x%x%x%x%-%x%x%x%x%-%x%x%x%x%-%x%x%x%x%-%x%x%x%x%x%x%x%x%x%x%x%x}") or string.match(L0_0, "\\programdata\\{%x%x%x%x%x%x%x%x%-%x%x%x%x%-%x%x%x%x%-%x%x%x%x%-%x%x%x%x%x%x%x%x%x%x%x%x}")) then
    mp.set_mpattribute("PUA:Block:InstalleRex")
    return mp.INFECTED
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
