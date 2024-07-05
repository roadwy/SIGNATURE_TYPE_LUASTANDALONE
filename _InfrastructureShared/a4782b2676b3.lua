if mp.get_mpattribute("SIGATTR:MadCodeHook") and peattributes.executes_from_dynamic_memory then
  return mp.INFECTED
end
return mp.CLEAN
