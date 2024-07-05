if mp.getfilesize() > 16777216 then
  return mp.CLEAN
end
if mp.readu_u32(headerpage, 1) == 944130375 and mp.readu_u32(headerpage, 5) == 20996409 and mp.readu_u32(headerpage, 9) == 7799024 and mp.readu_u32(headerpage, 13) == 83435776 and mp.readu_u32(headerpage, 17) == 0 and mp.readu_u32(headerpage, 21) == 11264 and mp.readu_u32(headerpage, 25) == 20971520 and mp.readu_u32(footerpage, mp.FOOTERPAGE_SZ - 5) == mp.readu_u32(footerpage, mp.FOOTERPAGE_SZ - 9) then
  mp.set_mpattribute("MpNonPIIFileType")
  return mp.INFECTED
else
  return mp.CLEAN
end
return mp.CLEAN
