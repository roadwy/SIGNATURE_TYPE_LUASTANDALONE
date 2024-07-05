if not pcallEx("isCurrentProcessFriendly", isCurrentProcessFriendly) then
  reportPcallEx()
end
if false then
  return mp.CLEAN
end
bm.add_action("EmsScan", 5000)
return mp.INFECTED
