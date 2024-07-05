if #mp.enum_mpattributesubstring("SCPT:CoreDriveA") > 3 then
  return mp.INFECTED
else
  return mp.CLEAN
end
return mp.CLEAN
