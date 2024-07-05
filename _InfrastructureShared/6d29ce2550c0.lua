local L0_0
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(tostring(footerpage))
L0_0 = string.gsub(L0_0, "[ \n\r\t]", "")
L0_0 = string.gsub(L0_0, "&?chrw%((%d+)%)", string.char)
L0_0 = string.gsub(L0_0, "&?chrw%((%d+)%+?%-(%d+)%)", function(A0_1, A1_2)
  return string.char(A0_1 - A1_2)
end)
L0_0 = string.gsub(L0_0, "&?chrw%((%d+)%+(%d+)%)", function(A0_3, A1_4)
  return string.char(A0_3 + A1_4)
end)
L0_0 = string.gsub(L0_0, "&?string%(\"(.?)\"%)", "%1")
L0_0 = string.gsub(L0_0, "&?\"(.)\"", "%1")
L0_0 = string.gsub(L0_0, "&string%(%.%)", ".")
L0_0 = string.lower(L0_0)
if string.match(L0_0, "\\googleupdate.lnk%).*thenfilecreateshortcut%(.*\\googlechrome.*exe,@startupcommondir\\googleupdate.lnk,") then
  return mp.INFECTED
end
return mp.LOWFI
