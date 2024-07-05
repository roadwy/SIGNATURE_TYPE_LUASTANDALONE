if #mp.enum_mpattributesubstring("SCPT:PS.SystemBC.SA0.") >= 4 then
  mp.set_mpattribute("Lua:PowerShell.SysetmBC.BadS1")
  return mp.INFECTED
elseif mp.enum_mpattributesubstring("SCPT:PS.SystemBC.SA0.") == 3 then
  mp.set_mpattribute("Lua:PowerShell.SysetmBC.S2")
  return mp.CLEAN
end
return mp.CLEAN
