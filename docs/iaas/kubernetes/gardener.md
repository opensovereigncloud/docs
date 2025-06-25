# Gardener Integration with IronCore

IronCore provides integration with [Gardener](https://gardener.cloud/), a Kubernetes-native project for managing Kubernetes clusters at scale. This integration enables you to use IronCore's IaaS capabilities as an infrastructure provider for Gardener-managed Kubernetes clusters.

## Gardener

[Gardener](https://github.com/gardener/gardener) is an open source project for orchestrated Kubernetes cluster provisioning. It supports many different cloud providers, with `IronCore` being one of them.

For detailed information about Gardener's architecture, concepts, and terminology, see the [official Gardener documentation](https://gardener.cloud/docs/).

## Integration Components

The Gardener integration with IronCore consists of two main components that work together to provide seamless cluster management:

### Gardener Extension Provider for IronCore

The [Gardener Extension Provider for IronCore](https://github.com/ironcore-dev/gardener-extension-provider-ironcore) contains a set of webhooks and controllers for reconciling IronCore-specific resources of `type: IronCore` that are created by Gardener during the cluster provisioning flow.

The extension primarily reconciles `Infrastructure`, `ControlPlane`, and `Worker` resources, translating Gardener's cluster specifications into IronCore API calls for infrastructure management.

### Machine Controller Manager Provider for IronCore

The [Machine Controller Manager Provider for IronCore](https://github.com/ironcore-dev/machine-controller-manager-provider-ironcore) integrates with [Gardener's Machine Controller Manager](https://github.com/gardener/machine-controller-manager) to manage worker nodes through IronCore's compute infrastructure.

The provider implements the machine lifecycle management capabilities defined by Gardener's MCM framework, handling machine creation, deletion, scaling, and health monitoring for IronCore compute resources.