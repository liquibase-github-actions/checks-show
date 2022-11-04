# Liquibase Checks Show Action
Official GitHub Action to run Liquibase Checks Show in your GitHub Action Workflow. For more information on how checks show works visit the [Official Liquibase Documentation](https://docs.liquibase.com/commands/home.html).
## Checks Show
List available checks, their configuration options, and current settings
## Usage
```yaml
steps:
- uses: actions/checkout@v3
- uses: liquibase-github-actions/checks-show@v4.17.1
  with:
    # Allows automatic backup and updating of liquibase.checks.conf file when new quality checks are available. Options: [on|off]
    # string
    # Optional
    autoUpdate: ""

    # Only show the listed rules. Use rule shortnames separated with commas to list all required rules. Use "all", to select all the rules (used by default, if the parameter isn"t set).
    # string
    # Optional
    checkName: ""

    # Name of the integration that is executing checks show
    # string
    # Optional
    checksIntegration: ""

    # Relative or fully qualified path to a configuration file for checks execution
    # string
    # Optional
    checksSettingsFile: ""

    # Only show the listed columns. Column options: id,checkname,type,priority,shortname,scope,enabled,severity,customization,description. Use commas to separate column names. Use "all" to select all the columns.
    # string
    # Optional
    showCols: ""

```

### Secrets
It is a good practice to protect your database credentials with [GitHub Secrets](https://docs.github.com/en/actions/security-guides/encrypted-secrets)

## Optional Liquibase Global Inputs
The liquibase checks show action accepts all valid liquibase global options as optional parameters. A full list is available in the official [Liquibase Documentation](https://docs.liquibase.com/parameters/command-parameters.html).

### Example
```yaml
steps:
  - uses: actions/checkout@v3
  - uses: liquibase-github-actions/checks-show@v4.17.1
    with:
      headless: true
      licenseKey: ${{ secrets.LIQUIBASE_LICENSE_KEY }}
      logLevel: INFO
```

## Feedback and Issues
This action is automatically generated. Please submit all feedback and issues with the [generator repository](https://github.com/liquibase/github-action-generator/issues).
