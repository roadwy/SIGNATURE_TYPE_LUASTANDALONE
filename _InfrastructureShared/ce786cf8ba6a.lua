if peattributes.ismsil and mp.HSTR_WEIGHT >= 3 and mp.get_mpattribute("SIGA:FileOperationDelete.S001") then
  return mp.INFECTED
end
return mp.LOWFI
