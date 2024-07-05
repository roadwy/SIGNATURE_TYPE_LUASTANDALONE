if mp.get_mpattribute("pea_hasexports") and mp.getfilesize() > 20000000 then
  if peattributes.x86_image then
    if not mp.get_mpattribute("do_exhaustivehstr_rescan") then
      mp.set_mpattribute("do_exhaustivehstr_rescan")
    end
  elseif peattributes.amd64_image and not mp.get_mpattribute("do_exhaustivehstr_64bit_rescan") then
    mp.set_mpattribute("do_exhaustivehstr_64bit_rescan")
  end
  return mp.INFECTED
end
return mp.CLEAN
