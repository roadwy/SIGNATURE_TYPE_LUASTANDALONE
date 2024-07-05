if peattributes.suspicious_image_version and peattributes.suspicious_timestamp and peattributes.isdll and mp.getfilesize() < 238592 then
  pe.set_peattribute("hstr_exhaustive", true)
  pe.reemulate()
  if mp.HSTR_WEIGHT == 21 then
    return mp.SUSPICIOUS
  end
end
return mp.CLEAN
