if mp.get_mpattribute("SIGATTR:FirewallBypassList") then
  return mp.INFECTED
end
return mp.CLEAN
