if #mp.enum_mpattributesubstring("SCPT:CoreDriveD") > 3 then
  return mp.INFECTED
else
  return mp.CLEAN
end
return mp.CLEAN
