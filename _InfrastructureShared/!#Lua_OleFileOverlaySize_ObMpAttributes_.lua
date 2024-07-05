if mp.getfilesize() < 4194304 then
  return mp.CLEAN
end
if mp.get_mpattributevalue("RPF:OleFileHasOverlay") == nil or mp.get_mpattributevalue("RPF:OleFileHasOverlay") < 256 then
  return mp.CLEAN
end
if mp.getfilesize() - mp.get_mpattributevalue("RPF:OleFileHasOverlay") >= 268435456 then
  mp.set_mpattribute("Lua:OLEOverlayGT256mb")
elseif mp.getfilesize() - mp.get_mpattributevalue("RPF:OleFileHasOverlay") >= 104857600 then
  mp.set_mpattribute("Lua:OLEOverlayGT100mb")
elseif mp.getfilesize() - mp.get_mpattributevalue("RPF:OleFileHasOverlay") >= 16777216 then
  mp.set_mpattribute("Lua:OLEOverlayGT16mb")
end
if (mp.getfilesize() - mp.get_mpattributevalue("RPF:OleFileHasOverlay")) / mp.get_mpattributevalue("RPF:OleFileHasOverlay") >= 1000 then
  mp.set_mpattribute("Lua:OLEOverlayGT1000xFileSize")
elseif (mp.getfilesize() - mp.get_mpattributevalue("RPF:OleFileHasOverlay")) / mp.get_mpattributevalue("RPF:OleFileHasOverlay") >= 100 then
  mp.set_mpattribute("Lua:OLEOverlayGT100xFileSize")
elseif (mp.getfilesize() - mp.get_mpattributevalue("RPF:OleFileHasOverlay")) / mp.get_mpattributevalue("RPF:OleFileHasOverlay") >= 10 then
  mp.set_mpattribute("Lua:OLEOverlayGT10xFileSize")
end
return mp.CLEAN
