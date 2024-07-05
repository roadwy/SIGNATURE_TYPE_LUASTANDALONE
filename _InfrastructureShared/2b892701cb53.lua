if pe.get_regval(pe.REG_EBX) < 16777216 then
  return mp.CLEAN
end
return mp.INFECTED
