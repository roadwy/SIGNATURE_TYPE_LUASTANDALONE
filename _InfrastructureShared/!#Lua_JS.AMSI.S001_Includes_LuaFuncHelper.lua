local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8
L0_0 = tostring
L1_1 = footerpage
L0_0 = L0_0(L1_1)
if L0_0 == nil or L0_0 == "" then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = {}
L2_2 = {}
L2_2["www.w3.org"] = true
L2_2["www.salesweb.jp"] = true
L2_2["vkdj.org"] = true
L2_2["utilities.pcpitstop.com"] = true
L2_2["tile.thunderforest.com"] = true
L2_2["switchboard.pcmatichome.com"] = true
L2_2["switchboard.default.pcpitstop.com"] = true
L2_2["schemas.xmlsoap.org"] = true
L2_2["prod5.comcept.net"] = true
L2_2["prod4.comcept.net"] = true
L2_2["ny.cf.pcpitstop.com"] = true
L2_2["login.microsoftonline.com"] = true
L2_2["localhost.geoprostor.net"] = true
L2_2["img.unitedconsumers.com"] = true
L2_2["graph.microsoft.com"] = true
L2_2["files.pcpitstop.com"] = true
L2_2["az542455.vo.msecnd.net"] = true
L2_2["api.weather.msn.com"] = true
L2_2["api.slyp.com.au"] = true
L2_2["10.125.31.183"] = true
L3_3 = nil
for L7_7 in L4_4(L5_5, L6_6) do
  if L7_7 ~= nil and L7_7 ~= "" then
    L8_8 = string
    L8_8 = L8_8.len
    L8_8 = L8_8(L7_7)
    if L8_8 >= 20 then
      L8_8 = string
      L8_8 = L8_8.len
      L8_8 = L8_8(L7_7)
      if L8_8 <= 1000 then
        L8_8 = MpCommon
        L8_8 = L8_8.Base64Decode
        L8_8 = L8_8(L7_7)
        L3_3 = L8_8
        if L3_3 ~= nil and L3_3 ~= "" then
          L8_8 = mp
          L8_8 = L8_8.set_mpattribute
          L8_8("Lua:AMSI.JS.SendWithBase64Str.S1")
          break
        end
      end
    end
  end
end
for L7_7 in L4_4(L5_5, L6_6) do
  if L7_7 ~= nil and L7_7 ~= "" then
    L8_8 = string
    L8_8 = L8_8.len
    L8_8 = L8_8(L7_7)
    if L8_8 >= 10 then
      L8_8 = string
      L8_8 = L8_8.len
      L8_8 = L8_8(L7_7)
      if L8_8 <= 1000 then
        L8_8 = string
        L8_8 = L8_8.gsub
        L8_8 = L8_8(L7_7, "%.", "_")
        mp.set_mpattribute("Lua:AMSI.JS.DomainWith4Parts.S1")
        mp.set_mpattribute("Lua:SuspDomain:" .. L8_8)
        if not L2_2[L7_7] then
          table.insert(L1_1, L7_7)
        end
      end
    end
  end
end
for L7_7 in L4_4(L5_5, L6_6) do
  if L7_7 ~= nil and L7_7 ~= "" then
    L8_8 = string
    L8_8 = L8_8.len
    L8_8 = L8_8(L7_7)
    if L8_8 >= 4 then
      L8_8 = string
      L8_8 = L8_8.len
      L8_8 = L8_8(L7_7)
      if L8_8 <= 1000 then
        L8_8 = string
        L8_8 = L8_8.gsub
        L8_8 = L8_8(L7_7, "%.", "_")
        mp.set_mpattribute("Lua:AMSI.JS.DomainWith2Parts.S1")
        mp.set_mpattribute("Lua:SuspDomain:" .. L8_8)
        if not L2_2[L7_7] then
          table.insert(L1_1, L7_7)
        end
      end
    end
  end
end
for L7_7 in L4_4(L5_5, L6_6) do
  if L7_7 ~= nil and L7_7 ~= "" then
    L8_8 = string
    L8_8 = L8_8.len
    L8_8 = L8_8(L7_7)
    if L8_8 >= 8 then
      L8_8 = string
      L8_8 = L8_8.len
      L8_8 = L8_8(L7_7)
      if L8_8 <= 1000 then
        L8_8 = L2_2[L7_7]
        if not L8_8 then
          L8_8 = table
          L8_8 = L8_8.insert
          L8_8(L1_1, L7_7)
        end
      end
    end
  end
end
L1_1 = L4_4
if L1_1 ~= nil then
elseif L4_4 == 0 then
  return L4_4
end
L4_4.SIG_CONTEXT = "LUA_GENERIC"
L4_4.CONTENT_SOURCE = "AMSI_JS"
L4_4.PROCESS_CONTEXT = "JS Caller"
L4_4.PARENT_CONTEXT = nil
L4_4.FILELESS = "true"
L4_4.CMDLINE_URL = "false"
L4_4.BREAK_AT_FIRST_HIT_MALWARE = "60"
L4_4.BREAK_AT_FIRST_HIT_PHISH = "60"
L7_7 = L4_4
L8_8 = 60
if L5_5 then
  L7_7 = "Lua:AMSI.JS.BadDomainFound.S1"
  L6_6(L7_7)
end
return L6_6
