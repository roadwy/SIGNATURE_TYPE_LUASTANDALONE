local L0_0
L0_0 = mp
L0_0 = L0_0.get_mpattribute
L0_0 = L0_0("TELPER:KPAT:VirTool:Win32/ObfuscatorGd!decblob")
if L0_0 then
  L0_0 = string
  L0_0 = L0_0.len
  L0_0 = L0_0(mp.getfilename())
  if L0_0 < 8 then
    L0_0 = mp
    L0_0 = L0_0.CLEAN
    return L0_0
  end
  L0_0 = string
  L0_0 = L0_0.lower
  L0_0 = L0_0(mp.getfilename())
  if string.find(L0_0, "csrss.exe%->%(nsis") ~= nil then
    return mp.INFECTED
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
