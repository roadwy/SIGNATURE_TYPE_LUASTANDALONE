-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#SLF_Trojan_HTML_Brocoiner_fromTel_ObMpAttributes_ 

-- params : ...
-- function num : 0
if (mp.get_mpattributesubstring)("TEL:HTML/CoinHive") and (mp.get_mpattributesubstring)("SCPT:VBSHttp") and (mp.get_mpattributesubstring)("Exploit:") and (mp.get_mpattributesubstring)("hasSelfModification") then
  return mp.INFECTED
end
return mp.CLEAN

