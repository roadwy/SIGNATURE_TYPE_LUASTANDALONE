local L0_0
L0_0 = mp
L0_0 = L0_0.readprotection
L0_0(false)
L0_0 = mp
L0_0 = L0_0.readfile
L0_0 = L0_0(534350, 1057)
if mp.crc32(-1, L0_0, 1, 1057) == 539295301 then
  return mp.INFECTED
end
return mp.CLEAN
