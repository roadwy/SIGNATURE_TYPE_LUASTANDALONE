if mp.get_mpattributesubstring("AllowList:") or mp.get_mpattributesubstring("Allowlist:") then
  return mp.INFECTED
end
return mp.CLEAN
