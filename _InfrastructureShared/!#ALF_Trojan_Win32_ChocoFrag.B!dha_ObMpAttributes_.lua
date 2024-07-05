if mp.getfilesize() > 8000000 then
  return mp.CLEAN
end
if mp.getfilesize() < 204800 then
  return mp.CLEAN
end
if mp.getfilename(mp.bitor(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE)):find("\\windows\\system32\\sys.dat", 1, true) or mp.getfilename(mp.bitor(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE)):find("\\windows\\system32\\richlog.dat", 1, true) or mp.getfilename(mp.bitor(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE)):find("\\windows\\system32\\flash.dat", 1, true) or mp.getfilename(mp.bitor(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE)):find("\\windows\\system32\\main.dat", 1, true) or mp.getfilename(mp.bitor(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE)):find("\\windows\\system32\\actionlist.xml", 1, true) or mp.getfilename(mp.bitor(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE)):find("\\windows\\system32\\wbem\\microsoft.net.props", 1, true) then
  mp.set_mpattribute("MpNonPIIFileType")
  return mp.INFECTED
end
return mp.CLEAN
