if pe.get_regval(pe.REG_EAX) == 106 and pe.get_regval(pe.REG_EDX) == 80 then
  return mp.INFECTED
end
return mp.CLEAN
