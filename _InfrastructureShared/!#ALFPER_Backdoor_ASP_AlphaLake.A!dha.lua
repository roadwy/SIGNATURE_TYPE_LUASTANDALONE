if mp.getfilesize() > 1048576 then
  return mp.CLEAN
end
if #mp.enum_mpattributesubstring("SCPT:AlphaLakeA") >= 2 then
  return mp.INFECTED
else
  return mp.CLEAN
end
return mp.CLEAN
