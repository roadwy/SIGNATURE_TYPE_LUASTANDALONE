if peattributes.ismsil then
  if pe.get_versioninfo() == nil then
    return mp.CLEAN
  end
  for _FORV_5_ = 1, #{
    "KnowBe4 Ransomware Simulator"
  } do
    if pe.get_versioninfo().ProductName == ({
      "KnowBe4 Ransomware Simulator"
    })[_FORV_5_] then
      return mp.INFECTED
    end
  end
end
return mp.CLEAN
