if mp.getfilesize() > 268435456 then
  return mp.CLEAN
end
if #mp.enum_mpattributesubstring("SCPT:PyFlashA") >= 5 then
  return mp.INFECTED
else
  return mp.CLEAN
end
return mp.CLEAN
