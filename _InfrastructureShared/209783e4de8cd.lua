if mp.HSTR_WEIGHT >= 3 then
  mp.set_mpattribute("PUA:Block:CpuMulti")
  return mp.INFECTED
end
if peattributes.amd64_image then
  mp.set_mpattribute("do_exhaustivehstr_64bit_rescan_cpumulti")
else
  mp.set_mpattribute("do_exhaustivehstr_rescan_cpumulti")
end
return mp.CLEAN
