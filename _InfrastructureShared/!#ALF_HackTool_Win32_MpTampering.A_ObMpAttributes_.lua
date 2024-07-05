if #mp.enum_mpattributesubstring("scpt:TamperingReg_") >= 3 then
  return mp.INFECTED
end
return mp.CLEAN
