if mp.get_mpattribute("CallsZwQuerySystemInformation") then
  mp.set_mpattribute("PEBMPAT:AntiEmuGetCopyOnWriteCount")
end
return mp.CLEAN
