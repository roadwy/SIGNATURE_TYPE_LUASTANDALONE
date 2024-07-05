if #mp.enum_mpattributesubstring("SCPT:PShellObfusRev.SA") >= 2 or 2 <= #mp.enum_mpattributesubstring("SCPT:PShellObfusRev.SB") then
  return mp.INFECTED
end
return mp.CLEAN
