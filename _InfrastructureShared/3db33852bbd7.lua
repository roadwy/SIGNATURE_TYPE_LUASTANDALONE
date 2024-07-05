local L0_0, L1_1
L0_0 = this_sigattrlog
L0_0 = L0_0[1]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[1]
  L0_0 = L0_0.utf8p2
  L1_1 = L0_0
  L0_0 = L0_0.lower
  L0_0 = L0_0(L1_1)
  L1_1 = 0
  L0_0 = L0_0:match("\\powershell%.exe\"(.+)$")
  if L0_0 ~= nil then
    L0_0 = L0_0 .. " "
    L0_0, L1_1 = L0_0:gsub("(%s%w:)%s", " ")
    if L1_1 == 1 then
      L0_0, L1_1 = L0_0:gsub("(%ssuspend%-bitlocker)%s", " ")
      if L1_1 == 1 then
        L0_0 = L0_0:gsub(" ", "")
        if L0_0 == "" then
          return mp.INFECTED
        end
      end
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
