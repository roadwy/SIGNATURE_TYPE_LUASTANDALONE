if mp.get_mpattributesubstring("TEL:HTML/CoinHive") and mp.get_mpattributesubstring("SCPT:VBSHttp") and mp.get_mpattributesubstring("Exploit:") and mp.get_mpattributesubstring("hasSelfModification") then
  return mp.INFECTED
end
return mp.CLEAN
