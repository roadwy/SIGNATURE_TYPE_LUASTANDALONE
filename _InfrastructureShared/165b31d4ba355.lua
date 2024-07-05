if mp.get_sigattr_event_count(16384) > 4 and 4 < mp.get_sigattr_event_count(16386) then
  return mp.INFECTED
end
return mp.CLEAN
