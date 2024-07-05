local L0_0
L0_0 = this_sigattrlog
L0_0 = L0_0[1]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[3]
  L0_0 = L0_0.matched
  if L0_0 then
    L0_0 = this_sigattrlog
    L0_0 = L0_0[1]
    L0_0 = L0_0.utf8p1
    if L0_0 then
      L0_0 = this_sigattrlog
      L0_0 = L0_0[3]
      L0_0 = L0_0.utf8p1
      if L0_0 then
        L0_0 = this_sigattrlog
        L0_0 = L0_0[1]
        L0_0 = L0_0.utf8p1
        if L0_0 and this_sigattrlog[3].utf8p1:match("[^\\]+$") and L0_0:match("[^\\]+$"):match("(.+)%.ico+"):lower() and this_sigattrlog[3].utf8p1:match("[^\\]+$"):match("(.+)%.README.txt+"):lower() and L0_0:match("[^\\]+$"):match("(.+)%.ico+"):lower() == this_sigattrlog[3].utf8p1:match("[^\\]+$"):match("(.+)%.README.txt+"):lower() then
          reportTimingData()
          sms_untrusted_process()
          return mp.INFECTED
        end
      end
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
