if #mp.enum_mpattributesubstring("SCPT:HafniumShell") >= 6 then
  return mp.INFECTED
else
  return mp.CLEAN
end
return mp.CLEAN
