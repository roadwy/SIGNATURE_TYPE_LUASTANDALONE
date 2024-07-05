if mp.getfilesize() < 524288 then
  mp.set_mpattribute("MACRO_FILE_SIZE:L0.5MB")
end
return mp.CLEAN
