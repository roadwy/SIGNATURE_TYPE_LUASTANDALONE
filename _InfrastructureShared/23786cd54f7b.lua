if mp.get_mpattribute("SIGATTR:VirTool:Win32/Injector.gen!BM") and mp.get_mpattribute("HSTR:HasSEH") and mp.get_mpattribute("Lua:DealPlyFileName") then
  return mp.INFECTED
end
return mp.CLEAN
