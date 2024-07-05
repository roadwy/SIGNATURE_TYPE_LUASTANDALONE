local L0_0
L0_0 = peattributes
L0_0 = L0_0.isdll
if L0_0 then
  L0_0 = peattributes
  L0_0 = L0_0.no_exports
  if not L0_0 then
    L0_0 = mp
    L0_0 = L0_0.getfilename
    L0_0 = L0_0(mp.bitor(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_LOWERCASE))
    if L0_0 == "scrobj.dll" then
      mp.set_mpattribute("Lua:Context:Filename_scrobj_dll")
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
