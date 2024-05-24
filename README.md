# Liquibase Checks Show Action
Official GitHub Action to run Liquibase Checks Show in your GitHub Action Workflow. For more information on how checks show works visit the [Official Liquibase Documentation](https://docs.liquibase.com/commands/home.html).
## Checks Show
List available checks, their configuration options, and current settings
## Usage
```yaml
steps:
- uses: actions/checkout@v3
- uses: liquibase-github-actions/checks-show@v4.28.0
  with:
    # Automatically enable new quality checks in liquibase.checks.conf file when they are available. Options: [true|false]
    # bool
    # Optional
    autoEnableNewChecks: ""

    # Allows automatic backup and updating of liquibase.checks.conf file when new quality checks are available, or for file format changes. Options: [on|off]
    # bool
    # Optional
    autoUpdate: ""

    # Only show the listed rules. Use rule shortnames separated with commas to list all required rules. Checks to exclude can be prefixed with the ! character. Use "all", to select all the rules (used by default, if the parameter isn"t set).
    # string
    # Optional
    checkName: ""

    # Only show the rules that are in the requested status. Valid options are "enabled","disabled", or "all"
    # string
    # Optional
    checkStatus: ""

    # If using a checks packages file, optionally specify which packages should be run from the file as a comma separated list.
    # string
    # Optional
    checksPackages: ""

    # Relative or fully qualified path to a configuration file for checks execution
    # string
    # Optional
    checksSettingsFile: ""

    # Only show the listed columns. Column options: id,checkname,type,priority,shortname,scope,status,severity,customization,description,file. Use commas to separate column names. Use "all" to select all the columns.
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
  - uses: liquibase-github-actions/checks-show@v4.28.0
    with:
      headless: true
      licenseKey: ${{ secrets.LIQUIBASE_LICENSE_KEY }}
      logLevel: INFO
```

## Feedback and Issues
This action is automatically generated. Please submit all feedback and issues with the [generator repository](https://github.com/liquibase/github-action-generator/issues).
