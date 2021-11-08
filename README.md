# Helm Lint Github Action

The action will lint a Helm Chart

## Inputs

### chart-path

**Required** - the path to the Helm Chart to lint

## Outputs

### output

the command output

## Example Usage

```yaml
uses: sixgill/actions-helm-lint
with:
  chart-path: deployments/my-super-awesome-chart
```