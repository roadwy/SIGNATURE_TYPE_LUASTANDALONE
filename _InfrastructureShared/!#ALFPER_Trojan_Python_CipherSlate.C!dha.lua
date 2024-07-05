if mp.getfilesize() > 16777216 then
  return mp.CLEAN
end
if #mp.enum_mpattributesubstring("SCPT:CipherSlateC") >= 2 then
  return mp.INFECTED
else
  return mp.CLEAN
end
return mp.CLEAN
