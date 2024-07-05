local L0_0
L0_0 = this_sigattrlog
L0_0 = L0_0[1]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[1]
  L0_0 = L0_0.utf8p1
  if L0_0 ~= nil then
    L0_0 = string
    L0_0 = L0_0.lower
    L0_0 = L0_0(this_sigattrlog[1].utf8p1)
    if (string.match(L0_0, "%%localappdata%%\\%a+\\%a+%.exe$") or string.match(L0_0, "%%localappdata%%\\{%x+%-%x+%-%x+%-%x+%-%x+}\\%a+%.exe$")) and string.match(L0_0, "\\[b-t][aeiou][b-t][aeiou]%a+%.exe$") then
      return mp.INFECTED
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
