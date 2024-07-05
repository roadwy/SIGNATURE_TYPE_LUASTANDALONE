if #mp.enum_mpattributesubstring("SCPT:jspWebShell") > 0 and mp.getfilename(mp.bitor(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE)):find("\\dell\\wms\\tomcat-9\\webapps\\root\\", 1, true) then
  return mp.INFECTED
end
return mp.CLEAN
