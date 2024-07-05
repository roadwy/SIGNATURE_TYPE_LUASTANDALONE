local L0_0, L1_1
L0_0 = peattributes
L0_0 = L0_0.reads_vdll_code
if L0_0 then
  L0_0 = peattributes
  L0_0 = L0_0.suspicious_image_version
  if not L0_0 then
    L0_0 = peattributes
    L0_0 = L0_0.uses_access_violation
    if not L0_0 then
      L0_0 = peattributes
      L0_0 = L0_0.uses_privinstr
      if not L0_0 then
        L0_0 = peattributes
        L0_0 = L0_0.deep_analysis
        if not L0_0 then
          L0_0 = peattributes
          L0_0 = L0_0.enable_vmm_grow
        end
      end
    end
  elseif L0_0 then
    L0_0 = peattributes
    L0_0 = L0_0.isdll
    if L0_0 then
      L0_0 = mp
      L0_0 = L0_0.INFECTED
      return L0_0
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
