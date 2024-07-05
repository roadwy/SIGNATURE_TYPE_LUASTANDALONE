local L0_0
L0_0 = mp
L0_0 = L0_0.readprotection
L0_0(false)
L0_0 = mp
L0_0 = L0_0.readfile
L0_0 = L0_0(80304, 832)
if mp.crc32(-1, L0_0, 1, 832) == 2937191514 then
  return mp.INFECTED
end
return mp.CLEAN
