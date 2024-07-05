local L0_0
L0_0 = mp
L0_0 = L0_0.HSTR_WEIGHT
if L0_0 >= 4 then
  L0_0 = mp
  L0_0 = L0_0.changedetectionname
  L0_0(805306394)
  L0_0 = mp
  L0_0 = L0_0.INFECTED
  return L0_0
end
L0_0 = hstrlog
L0_0 = L0_0[14]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = mp
  L0_0 = L0_0.changedetectionname
  L0_0(805306403)
end
L0_0 = hstrlog
L0_0 = L0_0[6]
L0_0 = L0_0.matched
if not L0_0 then
  L0_0 = hstrlog
  L0_0 = L0_0[7]
  L0_0 = L0_0.matched
  if not L0_0 then
    L0_0 = hstrlog
    L0_0 = L0_0[9]
    L0_0 = L0_0.matched
  end
elseif L0_0 then
  L0_0 = hstrlog
  L0_0 = L0_0[1]
  L0_0 = L0_0.matched
  if L0_0 then
    L0_0 = string
    L0_0 = L0_0.format
    L0_0 = L0_0("HSTR:VirTool:Win32/Obfuscator.ZG_%08X_02_0100", hstrlog[1].VA + 6)
    mp.set_mpattribute(L0_0)
  else
    L0_0 = hstrlog
    L0_0 = L0_0[2]
    L0_0 = L0_0.matched
    if L0_0 then
      L0_0 = string
      L0_0 = L0_0.format
      L0_0 = L0_0("HSTR:VirTool:Win32/Obfuscator.ZG_%08X_02_0200", hstrlog[2].VA + 40)
      mp.set_mpattribute(L0_0)
    else
      L0_0 = hstrlog
      L0_0 = L0_0[3]
      L0_0 = L0_0.matched
      if L0_0 then
        L0_0 = string
        L0_0 = L0_0.format
        L0_0 = L0_0("HSTR:VirTool:Win32/Obfuscator.ZG_%08X_02_0200", hstrlog[3].VA + 35)
        mp.set_mpattribute(L0_0)
      else
        L0_0 = hstrlog
        L0_0 = L0_0[5]
        L0_0 = L0_0.matched
        if L0_0 then
          L0_0 = string
          L0_0 = L0_0.format
          L0_0 = L0_0("HSTR:VirTool:Win32/Obfuscator.ZG_%08X_02_0200", hstrlog[5].VA + 15)
          mp.set_mpattribute(L0_0)
        end
      end
    end
  end
end
L0_0 = mp
L0_0 = L0_0.SUSPICIOUS
return L0_0
