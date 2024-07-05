if mp.get_sigattr_event_count(16384) > 50 then
  return mp.CLEAN
end
return mp.INFECTED
