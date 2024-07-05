local L0_0
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(mp.getfilename())
if string.sub(L0_0, -16) == "skypelogview.exe" then
  return mp.CLEAN
end
return mp.LOWFI
