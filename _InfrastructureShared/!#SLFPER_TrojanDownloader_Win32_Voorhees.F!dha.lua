if mp.getfilesize() > 14680064 then
  return mp.CLEAN
end
if #mp.enum_mpattributesubstring("SCPT:VoorheesF") >= 3 then
  return mp.INFECTED
else
  return mp.CLEAN
end
return mp.CLEAN
