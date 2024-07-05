local L0_0, L1_1
L0_0 = 3
L1_1 = pevars
L1_1 = L1_1.epsec
if hstrlog[1].matched and mp.HSTR_WEIGHT >= 2 then
  return mp.INFECTED
end
if mp.getfilesize() < 40960 or L0_0 > pehdr.NumberOfSections then
  return mp.CLEAN
end
if hstrlog[1].VA - pehdr.ImageBase >= pesecs[L0_0].VirtualAddress and hstrlog[1].VA - pehdr.ImageBase <= pesecs[L0_0].VirtualAddress + pesecs[L0_0].VirtualSize or hstrlog[1].VA - pehdr.ImageBase >= pesecs[L1_1].VirtualAddress and hstrlog[1].VA - pehdr.ImageBase <= pesecs[L1_1].VirtualAddress + pesecs[L1_1].VirtualSize then
  return mp.INFECTED
end
if peattributes.epscn_islast == true and peattributes.lastscn_executable == true and mp.bitand(pesecs[pehdr.NumberOfSections].Characteristics, 3758096384) == 3758096384 then
  mp.set_mpattribute("do_exhaustivehstr_rescan")
  pe.reemulate()
  return mp.CLEAN
end
return mp.CLEAN
