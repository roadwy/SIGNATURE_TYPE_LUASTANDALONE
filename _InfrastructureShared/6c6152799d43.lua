if mp.get_mpattribute("BM_DEVICE_DRIVER") and mp.get_mpattribute("RPF:TopLevelFile") then
  return mp.INFECTED
end
return mp.CLEAN
