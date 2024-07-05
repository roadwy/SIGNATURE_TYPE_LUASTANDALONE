if mp.HEADERPAGE_SZ < 256 then
  return mp.CLEAN
end
if mp.readheader(0, 12) == "\152\017\026E\144x\186\249N\214\143\238" then
  mp.set_mpattribute("MpNonPIIFileType")
  return mp.INFECTED
end
return mp.CLEAN
