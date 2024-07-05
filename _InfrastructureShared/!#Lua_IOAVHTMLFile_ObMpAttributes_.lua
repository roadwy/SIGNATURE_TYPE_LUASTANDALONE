if mp.get_mpattribute("RPF:TopLevelFile") then
  mp.set_mpattribute("Lua:IOAVTopLevelHTMLFile")
  mp.set_mpattribute("//Lua:GIOAVTopLevelHTMLFile")
elseif not mp.get_mpattribute("//Lua:GIOAVFirstHTMLFileInContainer") and mp.getfilename(mp.FILEPATH_QUERY_LOWERCASE):find(".crx->", 1, true) == nil and mp.getfilename(mp.FILEPATH_QUERY_LOWERCASE):find(".apk->", 1, true) == nil and mp.getfilename(mp.FILEPATH_QUERY_LOWERCASE):find(".msi->", 1, true) == nil and mp.getfilename(mp.FILEPATH_QUERY_LOWERCASE):find(".xpi->", 1, true) == nil then
  mp.set_mpattribute("Lua:IOAVFirstHTMLFileInContainer")
  mp.set_mpattribute("//Lua:GIOAVFirstHTMLFileInContainer")
end
return mp.CLEAN
