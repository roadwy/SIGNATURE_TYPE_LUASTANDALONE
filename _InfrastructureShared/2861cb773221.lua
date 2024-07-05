if mp.get_mpattribute("MpInternal_IsPliScan") then
  if not mp.get_mpattribute("MpPeekIntoResources") then
    mp.set_mpattribute("MpPeekIntoResources")
  end
  if peattributes.x86_image then
    if not mp.get_mpattribute("do_exhaustivehstr_rescan") then
      mp.set_mpattribute("do_exhaustivehstr_rescan")
    end
  elseif peattributes.amd64_image and not mp.get_mpattribute("do_exhaustivehstr_64bit_rescan") then
    mp.set_mpattribute("do_exhaustivehstr_64bit_rescan")
  end
end
return mp.INFECTED
