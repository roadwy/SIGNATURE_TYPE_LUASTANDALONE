if mp.getfilesize() < 1048576 then
  mp.set_mpattribute("PDF:ScanAllUris")
end
return mp.CLEAN
