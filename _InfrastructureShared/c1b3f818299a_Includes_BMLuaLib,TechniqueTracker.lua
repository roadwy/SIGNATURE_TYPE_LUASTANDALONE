if IsTacticObservedGlobal("FirstLogonUser") then
  return mp.INFECTED
end
return mp.CLEAN
