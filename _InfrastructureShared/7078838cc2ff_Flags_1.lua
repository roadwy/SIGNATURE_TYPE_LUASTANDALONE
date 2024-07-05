local L0_0
L0_0 = pevars
L0_0 = L0_0.epsec
if pevars.epsec and pesecs[L0_0].SizeOfRawData >= 40960 and pesecs[L0_0].SizeOfRawData <= 131072 and pehdr.SizeOfImage >= 65536 and pehdr.SizeOfImage <= 1044480 then
  mp.changedetectionname(805306422)
  return mp.INFECTED
end
return mp.SUSPICIOUS
