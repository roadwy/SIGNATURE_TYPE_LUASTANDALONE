if not peattributes.isdll or not peattributes.hasexports then
  return mp.CLEAN
end
if not mp.get_mpattribute("Excel_LLXLoader") then
  mp.set_mpattribute("Excel_LLXLoader")
end
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
return mp.INFECTED
