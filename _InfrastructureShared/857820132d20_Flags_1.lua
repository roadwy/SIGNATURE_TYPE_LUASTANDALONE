if pe.contains_va(2, hstrlog[1].VA) and pesecs[2].SizeOfRawData >= 256 and pesecs[2].SizeOfRawData <= 512 and pe.contains_va(1, hstrlog[2].VA) and pesecs[1].VirtualSize >= 65536 and pesecs[1].VirtualSize <= 196608 and pehdr.SizeOfImage > 1048576 and pehdr.SizeOfImage < 1572864 and not peattributes.lastscn_writable and not peattributes.lastscn_executable then
  mp.changedetectionname(268436397)
  return mp.INFECTED
end
return mp.SUSPICIOUS
