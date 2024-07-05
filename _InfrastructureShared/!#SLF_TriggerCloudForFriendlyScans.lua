local L0_0
L0_0 = mp
L0_0 = L0_0.istriggercloudyfriendlyscan
L0_0 = L0_0()
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.get_parent_filehandle
L0_0 = L0_0()
if not mp.is_handle_nil(L0_0) then
  return mp.CLEAN
end
if not mp.isfriendlyscan() then
  return mp.CLEAN
end
if peattributes.msil_ngenimage then
  return mp.CLEAN
end
return mp.INFECTED
