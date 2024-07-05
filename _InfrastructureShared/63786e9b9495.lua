if peattributes.ismsil == true and mp.get_mpattribute("NID:Trojan:MSIL/AgentTesla") then
  return mp.INFECTED
end
return mp.CLEAN
