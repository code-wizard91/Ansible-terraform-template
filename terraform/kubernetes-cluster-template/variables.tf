variable "client_id" {}
variable "client_secret" {}

variable "agent_count" {
    default = 1
}

variable "agent_max_count" {
    default = 3
}

variable "agent_min_count" {
    default = 1
}

variable "ssh_public_key" {
    default = "~/.ssh/id_rsa.pub"
}

variable "dns_prefix" {
    default = "k8-dns"
}

variable cluster_name {
    default = "kube-cluster"
}

variable resource_group_name {
    default = "k8-rg"
}

variable location {
    default = "east us"
}

variable log_analytics_workspace_name {
    default = "cluster-LogAnalyticsWorkspace"
}

variable log_analytics_workspace_location {
    default = "east us"
}

# refer https://azure.microsoft.com/pricing/details/monitor/ for log analytics pricing 
variable log_analytics_workspace_sku {
    default = "PerGB2018"
}
