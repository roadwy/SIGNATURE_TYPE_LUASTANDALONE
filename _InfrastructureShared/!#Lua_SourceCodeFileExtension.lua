if #mp.enum_mpattributesubstring("SCPT:CodeOnly") == 0 then
  return mp.CLEAN
end
if ({
  [".asm"] = "",
  [".asm64"] = "",
  [".c"] = "",
  [".cpp"] = "",
  [".cxx"] = "",
  [".h"] = "",
  [".m"] = ""
})[string.sub(mp.getfilename(mp.bitor(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_LOWERCASE)), -5):match("(%.%w+)$")] then
  mp.set_mpattribute("Lua:CppLangFileExtension")
  return mp.INFECTED
end
if ({
  [".java"] = "",
  [".cs"] = "",
  [".lua"] = "",
  [".go"] = ""
})[string.sub(mp.getfilename(mp.bitor(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_LOWERCASE)), -5):match("(%.%w+)$")] then
  mp.set_mpattribute("Lua:ProgrammingLangFileExtension")
  return mp.INFECTED
end
if ({
  [".py"] = "",
  [".pyc"] = "",
  [".ps1"] = "",
  [".pl"] = "",
  [".rb"] = "",
  [".bat"] = "",
  [".sh"] = "",
  [".vba"] = "",
  [".vbs"] = "",
  [".vb"] = "",
  [".hta"] = ""
})[string.sub(mp.getfilename(mp.bitor(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_LOWERCASE)), -5):match("(%.%w+)$")] then
  mp.set_mpattribute("Lua:ScriptFileExtension")
  return mp.INFECTED
end
if ({
  [".js"] = "",
  [".html"] = "",
  [".htm"] = "",
  [".aspx"] = "",
  [".php"] = "",
  [".cgi"] = "",
  [".jsp"] = "",
  [".wasm"] = "",
  [".wat"] = ""
})[string.sub(mp.getfilename(mp.bitor(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_LOWERCASE)), -5):match("(%.%w+)$")] then
  mp.set_mpattribute("Lua:WebFileExtension")
  return mp.INFECTED
end
if ({
  [".md"] = "",
  [".txt"] = "",
  [".bin"] = ""
})[string.sub(mp.getfilename(mp.bitor(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_LOWERCASE)), -5):match("(%.%w+)$")] then
  mp.set_mpattribute("Lua:ProgrammingRelatedFileExtension")
  return mp.INFECTED
end
return mp.CLEAN
