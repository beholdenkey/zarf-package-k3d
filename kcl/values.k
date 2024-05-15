gLabels = {}
gAnnotations = gLabels
some = lambda x: any -> bool {
    x not in [None, Undefined]
}
schema Service:
    """
    Configuration for a Kubernetes Service.
    """
    type: str
    clusterIP?: str
    externalIPs?: [str]
    loadBalancerIP?: str
    loadBalancerSourceRanges?: {str:str}
    servicePort: str
    labels?: {str:str}
    annotations?: {str:str}

# Volume configuration
schema Volume:
    """
    Configuration for a volume, including mount paths and host paths.
    """
    name: str
    mountPath: str
    hostPath: str

# Global configuration options with defaults and help messages for command-line overrides
name: str = option("name", help="The workload name") or "my-app-name"
version: str = option("version", help="The workload version") or "1.0.0"
image: str = option("image", help="The workload image") or "my-app-image"
labels: {str:str} = option("labels", help="Labels to apply to the workload") or {}
args: [str] = option("args", help="Arguments to pass to the workload") or []
selectorLabels: {str:str} = option("selectorLabels", help="Selector labels for the workload") or {}
replicas: int = option("replicas", help="Number of replicas for the workload") or 2
namespace: str = option("namespace", help="Kubernetes namespace for the workload") or None
