if peattributes.isvbnative == true and peattributes.isexe == true and mp.getfilesize() < 2048000 then
  return mp.INFECTED
elseif mp.get_mpattribute("HSTR:IsVB6") and peattributes.isexe == true and mp.getfilesize() < 2048000 then
  return mp.INFECTED
end
return mp.CLEAN
