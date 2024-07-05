local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.SCANREASON_ONMODIFIEDHANDLECLOSE
if L0_0 == L1_1 then
  L1_1 = string
  L1_1 = L1_1.lower
  L1_1 = L1_1(mp.get_contextdata(mp.CONTEXT_DATA_FILENAME))
  if ({
    [".doc"] = "",
    [".xls"] = "",
    [".ppt"] = "",
    [".pdf"] = "",
    [".jpg"] = "",
    [".gif"] = "",
    [".png"] = "",
    [".pic"] = "",
    [".txt"] = "",
    [".mp3"] = ""
  })[string.sub(L1_1, -4)] then
    return mp.INFECTED
  end
  if ({
    [".docx"] = "",
    [".xlsx"] = "",
    [".pptx"] = ""
  })[string.sub(L1_1, -5)] then
    return mp.INFECTED
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
