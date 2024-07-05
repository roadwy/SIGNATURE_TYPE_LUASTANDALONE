if #mp.enum_mpattributesubstring("SCPT:CoreDriveB") > 3 then
  return mp.INFECTED
else
  return mp.CLEAN
end
return mp.CLEAN
