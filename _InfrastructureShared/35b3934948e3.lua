local L0_0, L1_1, L2_2
L0_0 = bm
L0_0 = L0_0.get_current_process_startup_info
L0_0 = L0_0()
L1_1 = L0_0.command_line
L2_2 = string
L2_2 = L2_2.lower
L2_2 = L2_2(string.gsub(L1_1, "`", ""))
L1_1 = L2_2
L2_2 = string
L2_2 = L2_2.gsub
L2_2 = L2_2(L1_1, " ", "")
if string.find(L2_2, ".downloadstring('ht", 1, true) or string.find(L2_2, ".downloadstring('\\\\", 1, true) or string.find(L2_2, ".downloadstring($", 1, true) or string.find(L2_2, ").'downloadstring'(", 1, true) or string.find(L2_2, ".openread('http", 1, true) or string.find(L2_2, ".open('get','http", 1, true) or string.find(L2_2, ".invoke('http", 1, true) or string.find(L2_2, "get-itemproperty", 1, true) or string.find(L2_2, ".entrypoint.invoke($", 1, true) or string.find(L2_2, "|iex", 1, true) or string.find(L2_2, ";iex$", 1, true) or string.find(L2_2, ";iex($", 1, true) or string.find(L2_2, ")).readtoend()", 1, true) or string.find(L2_2, "\\admin$\\", 1, true) or string.find(L2_2, "iex($env:", 1, true) or string.find(L2_2, "x(iwr('http", 1, true) or string.find(L2_2, "\\users\\public\\", 1, true) or string.find(L2_2, "\\appdata\\roaming\\", 1, true) or string.find(L2_2, ")).invoke(((", 1, true) or string.find(L2_2, ".invoke((('h", 1, true) or string.find(L2_2, ").invoke($", 1, true) or string.find(L2_2, ".webrequest]::create('h", 1, true) or string.find(L2_2, "|invoke-expression", 1, true) or string.find(L2_2, "iwr('http", 1, true) or string.find(L2_2, "-join'')|&(", 1, true) or string.find(L2_2, "-join'')|.(", 1, true) or string.find(L2_2, ");iex([", 1, true) or string.find(L1_1, "gp -pa hk", 1, true) or string.find(L1_1, "gp -path hk", 1, true) or string.find(L1_1, "[wmiclass] ", 1, true) or string.find(L1_1, "(gv ", 1, true) or string.find(L1_1, "-value gp;", 1, true) or string.find(L1_1, "(gal ", 1, true) or string.find(L1_1, "(gcm ", 1, true) or string.find(L1_1, ");sal ", 1, true) or string.find(L1_1, ");sv ", 1, true) then
  return mp.INFECTED
end
return mp.CLEAN
