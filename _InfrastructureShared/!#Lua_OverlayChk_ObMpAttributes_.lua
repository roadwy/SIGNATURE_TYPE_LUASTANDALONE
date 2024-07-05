if mp.getfilesize() < 102400 then
  return mp.CLEAN
end
if 102400 < mp.getfilesize() - (pesecs[pehdr.NumberOfSections].PointerToRawData + pesecs[pehdr.NumberOfSections].SizeOfRawData) then
  mp.set_mpattribute("Lua:OverlayGT100")
  return mp.CLEAN
end
mp.set_mpattribute("Lua:OverlayLE100")
return mp.CLEAN
