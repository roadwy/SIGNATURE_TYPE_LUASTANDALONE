if not pehdr.TimeDateStamp then
  return mp.CLEAN
end
if pehdr.TimeDateStamp > 1640995200 and pehdr.TimeDateStamp < 1767139200 then
  if not pe.get_versioninfo() then
    return mp.CLEAN
  end
  if not pe.get_versioninfo().CompanyName then
    return mp.CLEAN
  end
  if pe.get_versioninfo().CompanyName == "J.C. Kessels" then
    if not pe.get_fixedversioninfo() then
      return mp.CLEAN
    end
    if not pe.get_fixedversioninfo().FileVersion then
      return mp.CLEAN
    end
    if not Version_to_str(pe.get_fixedversioninfo().FileVersion) then
      return mp.CLEAN
    end
    if Version_to_str(pe.get_fixedversioninfo().FileVersion) == "3.36.0.2" then
      return mp.INFECTED
    end
  end
end
return mp.CLEAN
