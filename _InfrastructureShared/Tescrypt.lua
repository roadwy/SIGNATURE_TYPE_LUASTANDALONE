if Remediation.Threat.Active then
  Remediation.ResetBcdWmiParameter(Remediation.BCD_INTEGER_BOOT_STATUS_POLICY, 0)
  Remediation.ResetBcdWmiParameter(Remediation.BCD_BOOLEAN_AUTORECOVERY_ENABLED, true)
  Remediation.ResetBcdWmiParameter(Remediation.BCD_BOOLEAN_EMS_ENABLED, true)
end
