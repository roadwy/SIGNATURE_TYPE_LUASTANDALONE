if peattributes.isdll and pe.get_regval(pe.REG_EIP) > pe.get_regval(pe.REG_ESP) and pe.get_regval(pe.REG_EIP) - pe.get_regval(pe.REG_ESP) < 512 and mp.get_mpattribute("SIGATTR:DelphiFile") then
  return mp.INFECTED
end
return mp.CLEAN
