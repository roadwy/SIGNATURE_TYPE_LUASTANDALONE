if not pcallEx("isCurrentProcessFriendly", isCurrentProcessFriendly) then
  reportPcallEx()
end
if not false then
  return mp.CLEAN
end
return mp.INFECTED
