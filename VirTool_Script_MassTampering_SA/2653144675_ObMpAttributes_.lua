if #mp.enum_mpattributesubstring("SCPT:DisableRTP.STB") >= 5 then
  return mp.INFECTED
end
return mp.CLEAN
