local L0_0
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(mp.get_contextdata(mp.CONTEXT_DATA_FILENAME))
if L0_0 ~= nil and #L0_0 > 5 then
  if string.find(string.sub(L0_0, -4), ".", 1, true) == nil then
    return mp.CLEAN
  end
  if string.find(L0_0, "\226\128\174", 2, true) == nil then
    return mp.CLEAN
  end
  if ({
    ["bat"] = true,
    ["exe"] = true,
    ["scr"] = true,
    ["cmd"] = true,
    ["com"] = true,
    ["lnk"] = true,
    ["pif"] = true,
    ["vbe"] = true,
    ["vbs"] = true,
    [".js"] = true,
    ["jse"] = true,
    ["wsh"] = true,
    ["wsf"] = true,
    ["ps1"] = true,
    ["jar"] = true,
    ["hta"] = true
  })[string.sub(L0_0, -3)] ~= nil then
    if #L0_0 >= 10 and #L0_0 > string.find(L0_0, "\226\128\174", 2, true) + 6 then
      if ({
        ["cod."] = "doc",
        ["cod "] = "doc",
        ["xcod"] = "docx",
        ["slx."] = "xls",
        ["xslx"] = "xlsx",
        ["tpp."] = "ppt",
        ["xtpp"] = "pptx",
        ["ftr."] = "rtf",
        ["fdp."] = "pdf",
        ["txt."] = "txt",
        ["ini."] = "ini",
        ["4pm."] = "mp4",
        ["3pm."] = "mp3",
        ["vaw."] = "wav",
        ["iva."] = "avi",
        ["vkm."] = "mkv",
        ["bvmr"] = "rmvb",
        ["vmw."] = "wmv",
        ["vom."] = "mov",
        ["gpj."] = "jpg",
        ["gnp."] = "png",
        ["pmb."] = "bmp",
        ["pg3."] = "3gp",
        ["piz."] = "zip",
        ["rar."] = "rar",
        ["lmth"] = "html",
        ["mth."] = "htm"
      })[string.sub(L0_0, string.find(L0_0, "\226\128\174", 2, true) + 3, string.find(L0_0, "\226\128\174", 2, true) + 6)] ~= nil then
        mp.set_mpattribute("Lua:Context/RightToLeftOverride.B!fake_" .. ({
          ["cod."] = "doc",
          ["cod "] = "doc",
          ["xcod"] = "docx",
          ["slx."] = "xls",
          ["xslx"] = "xlsx",
          ["tpp."] = "ppt",
          ["xtpp"] = "pptx",
          ["ftr."] = "rtf",
          ["fdp."] = "pdf",
          ["txt."] = "txt",
          ["ini."] = "ini",
          ["4pm."] = "mp4",
          ["3pm."] = "mp3",
          ["vaw."] = "wav",
          ["iva."] = "avi",
          ["vkm."] = "mkv",
          ["bvmr"] = "rmvb",
          ["vmw."] = "wmv",
          ["vom."] = "mov",
          ["gpj."] = "jpg",
          ["gnp."] = "png",
          ["pmb."] = "bmp",
          ["pg3."] = "3gp",
          ["piz."] = "zip",
          ["rar."] = "rar",
          ["lmth"] = "html",
          ["mth."] = "htm"
        })[string.sub(L0_0, string.find(L0_0, "\226\128\174", 2, true) + 3, string.find(L0_0, "\226\128\174", 2, true) + 6)])
        mp.set_mpattribute("Lua:Context/RightToLeftOverride.B!masquerading")
        return mp.INFECTED
      end
    end
    mp.set_mpattribute("Lua:Context/RightToLeftOverride.B!suspicious")
  end
  return mp.INFECTED
end
return mp.CLEAN
