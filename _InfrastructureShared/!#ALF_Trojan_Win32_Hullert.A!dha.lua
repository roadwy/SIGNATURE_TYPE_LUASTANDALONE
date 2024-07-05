if pe.get_versioninfo() ~= nil then
  if pe.get_versioninfo().CompanyName == "Hewlett-Packard Company" and ({
    ["Check Update"] = "",
    ["cas"] = "",
    ["errorcheck"] = "",
    ["smss"] = "",
    ["twain_64"] = "",
    ["w32srv"] = "",
    ["w32upd"] = ""
  })[pe.get_versioninfo().ProductName] then
    return mp.INFECTED
  end
end
return mp.CLEAN
