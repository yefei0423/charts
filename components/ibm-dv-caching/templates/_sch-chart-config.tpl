{{- /*
"dvCaching.sch.chart.config.values" contains the chart specific values used to override or provide
additional configuration values used by the Shared Configurable Helpers.
*/ -}}
{{- define "dvCaching.sch.chart.config.values" -}}
sch:
  chart:
    appName: "dv"
    labelType: "prefixed"
    components:
      caching:
        name: "caching"
    security:
      defaultPodSecurityContext:
        hostNetwork: false
        hostPID: false
        hostIPC: false
        securityContext:
          runAsNonRoot: true
      defaultContainerSecurityContext:
        securityContext:
          privileged: false
          readOnlyRootFilesystem: true
          allowPrivilegeEscalation: false
          runAsNonRoot: true
          capabilities:
            drop:
            - ALL
      cachingContainerSecurityContext:
        securityContext:
          privileged: false
          readOnlyRootFilesystem: false
          allowPrivilegeEscalation: false
          capabilities:
            drop:
            - ALL
    metering:
      productName: "IBM Data Virtualization"
      productID: "ICP4D-IBMDataVirtualizationv141_00000"
      productVersion: "1.4.1"
      productMetric: "VIRTUAL_PROCESSOR_CORE"
      productChargedContainers: "All"
      cloudpakName: "IBM Cloud Pak for Data"
      cloudpakId: "eb9998dcc5d24e3eb5b6fb488f750fe2"
      cloudpakVersion: "3.0.1"
{{- end -}}
