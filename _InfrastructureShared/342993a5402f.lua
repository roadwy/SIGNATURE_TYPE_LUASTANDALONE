if mp.get_mpattribute("BM_LNK_FILE") or mp.get_mpattribute("Lua:TopLevelFileExt.A!lnk") then
  return mp.INFECTED
end
return mp.CLEAN
