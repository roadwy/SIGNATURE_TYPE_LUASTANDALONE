if peattributes.isexe and peattributes.packed and pehdr.NumberOfSections > 7 then
  if mp.HSTR_WEIGHT == 3 then
    if mp.get_mpattribute("FOP:Win32/Crybot") then
      return mp.INFECTED
    end
    return mp.SUSPICIOUS
  end
  return mp.INFECTED
end
return mp.CLEAN
