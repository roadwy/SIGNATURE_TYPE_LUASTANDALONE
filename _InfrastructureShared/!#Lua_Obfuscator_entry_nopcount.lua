local L0_0, L1_1
L0_0 = peattributes
L0_0 = L0_0.epscn_islast
if L0_0 then
  L0_0 = peattributes
  L0_0 = L0_0.epscn_writable
  if L0_0 then
    L0_0 = peattributes
    L0_0 = L0_0.firstsectwritable
    if L0_0 then
      L0_0 = epcode
      L0_0 = L0_0[1]
      if L0_0 ~= 96 then
        L0_0 = epcode
        L0_0 = L0_0[1]
      elseif L0_0 == 144 then
        L0_0 = pesecs
        L1_1 = pehdr
        L1_1 = L1_1.NumberOfSections
        L0_0 = L0_0[L1_1]
        L0_0 = L0_0.SizeOfRawData
        if L0_0 < 4096 then
          L0_0 = pe
          L0_0 = L0_0.OPCLOG_SZ
          if L0_0 > 20 then
            L0_0 = 0
            L1_1 = 1
            while L1_1 < 20 do
              if opclog[L1_1].value == 144 then
                L0_0 = L0_0 + 1
              end
              L1_1 = L1_1 + 1
            end
            if L0_0 >= 7 then
              mp.set_mpattribute("Lua:Obfuscator_entry_nopcount")
            end
          end
        end
      end
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
