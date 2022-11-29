-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#LUA_Trojan_JS_Kilim!FB_rem_chr_tab_ext_ObMpAttributes_ 

-- params : ...
-- function num : 0
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON)
do
  if l_0_0 == mp.SCANREASON_ONOPEN then
    local l_0_1 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME))
    if l_0_1 == "chrome.exe" then
      (mp.set_mpattribute)("LUA:Trojan:JS/Kilim!FB_rem_chr_tab_ext")
    end
  end
  return mp.CLEAN
end

