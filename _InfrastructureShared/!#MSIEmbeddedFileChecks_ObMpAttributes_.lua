if not mp.enum_mpattributesubstring("//Lua:MSIBinary:") or #mp.enum_mpattributesubstring("//Lua:MSIBinary:") == 0 then
  return mp.CLEAN
end
if #mp.enum_mpattributesubstring("//Lua:MSIBinary:") >= 10 then
  mp.set_mpattribute("//Lua:MSIBinCount:GE10")
elseif #mp.enum_mpattributesubstring("//Lua:MSIBinary:") >= 5 then
  mp.set_mpattribute("//Lua:MSIBinCount:GE5")
elseif #mp.enum_mpattributesubstring("//Lua:MSIBinary:") >= 3 then
  mp.set_mpattribute("//Lua:MSIBinCount:GE3")
elseif #mp.enum_mpattributesubstring("//Lua:MSIBinary:") >= 2 then
  mp.set_mpattribute("//Lua:MSIBinCount:GE2")
else
  mp.set_mpattribute("//Lua:MSIBinCount:GE1")
end
return mp.CLEAN
