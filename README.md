# Royal Technology Solutions — Infrastructure & Cloud Engineering Lab

A hands-on enterprise infrastructure project designed and implemented to develop practical systems administration, automation, networking, database, security, and cloud engineering skills.

The environment began as an on-premises Windows Server home lab and has expanded into a hybrid-cloud architecture integrating Microsoft infrastructure, PostgreSQL database services, PowerShell automation, and Amazon Web Services (AWS).

## Project Areas

### Windows Infrastructure Automation

PowerShell automation is used to collect live infrastructure data from the Royalty.Local Active Directory environment and generate timestamped administrative reports.

Current automation includes:

- Active Directory user reporting
- Disabled account identification
- Computer inventory
- Server health monitoring
- Disk and memory utilization monitoring
- Critical Windows service monitoring
- Domain controller inventory
- FSMO role reporting
- Health-state classification

### RoyalDB AWS Migration

RoyalDB is a PostgreSQL relational database supporting the service operations model for Royal Technology Solutions.

The database was migrated from the Windows Server home-lab environment to a private Amazon RDS for PostgreSQL deployment.

The migration included:

- PostgreSQL source and target assessment
- Custom-format `pg_dump` backup
- Backup archive inspection
- Secure transfer through private Amazon S3 staging
- EC2-based migration access
- Private Amazon RDS connectivity
- `pg_restore`
- Ownership and ACL translation
- Row-count validation
- Primary and foreign key validation
- Constraint validation
- Relational JOIN testing
- PostgreSQL sequence validation
- Role-based access control
- Least-privilege permissions
- Default privileges for future database objects

All seven RoyalDB tables and 25 existing records were successfully migrated and validated.

Full technical documentation:

`Reports/RoyalDB-AWS-Migration/RoyalDB-AWS-Migration.md`

## RoyalDB Data Model

RoyalDB currently contains seven core relational tables:

| Table | Purpose |
|---|---|
| `customer` | Customer organizations |
| `location` | Customer locations |
| `device` | Managed customer assets |
| `contract` | Customer service contracts |
| `technician` | Technical personnel |
| `ticket` | Service/support tickets |
| `ticket_assignment` | Technician-to-ticket assignments |

## AWS Architecture

The cloud portion of the environment currently incorporates:

- Amazon EC2
- Amazon RDS for PostgreSQL
- Amazon S3
- AWS IAM
- AWS Systems Manager Session Manager
- Amazon VPC networking
- Security groups
- Private database connectivity
- SSL/TLS PostgreSQL connections

The RDS database is not publicly exposed.

Sensitive AWS identifiers and credentials are intentionally excluded from this repository.

## Automation Scripts

### Get-ADUserReport.ps1

Queries Active Directory user accounts and generates timestamped CSV reports. The script also identifies disabled accounts for administrative review.

### Get-ComputerInventory.ps1

Queries Active Directory computer objects and reports computer names, operating systems, OS versions, account status, and last-logon information.

### Get-ServerHealth.ps1

Collects Windows Server health information through CIM, including operating system details, uptime, memory utilization, and disk utilization.

Automated thresholds classify resource conditions as `HEALTHY`, `WARNING`, or `CRITICAL`.

### Get-ServiceHealth.ps1

Monitors critical Active Directory and Windows infrastructure services, including DNS Server, Kerberos Key Distribution Center, Netlogon, Active Directory Domain Services, and Windows Time.

### Get-DomainHealth.ps1

Collects Active Directory domain and domain controller information, including domain functional level, FSMO role holders, domain controller count, IP addresses, Active Directory site membership, and Global Catalog status.

## Database Migration Validation Scripts

The `Scripts/RoyalDB-AWS-Migration` directory contains reusable SQL queries used to validate the migrated database.

```text
validate_row_counts.sql
validate_constraints.sql
validate_sequences.sql
validate_relationships.sql
```

These scripts provide repeatable validation of data completeness, database constraints, sequence state, and relational behavior.

## Health Monitoring Thresholds

### Memory Utilization

| Utilization | Status |
|---|---|
| Below 80% | HEALTHY |
| 80% to below 90% | WARNING |
| 90% or higher | CRITICAL |

### Disk Free Space

| Free Space | Status |
|---|---|
| 20% or higher | HEALTHY |
| 10% to below 20% | WARNING |
| Below 10% | CRITICAL |

## Project Structure

```text
Infrastructure-Automation-GitHub/
|
+-- Scripts/
|   +-- Get-ADUserReport.ps1
|   +-- Get-ComputerInventory.ps1
|   +-- Get-DomainHealth.ps1
|   +-- Get-ServerHealth.ps1
|   +-- Get-ServiceHealth.ps1
|   |
|   +-- RoyalDB-AWS-Migration/
|       +-- validate_row_counts.sql
|       +-- validate_constraints.sql
|       +-- validate_sequences.sql
|       +-- validate_relationships.sql
|
+-- Reports/
|   +-- RoyalDB-AWS-Migration/
|       +-- RoyalDB-AWS-Migration.md
|
+-- Screenshots/
|   +-- AD-User-Report.png
|   +-- Computer-Inventory.png
|   +-- Domain-Health.png
|   +-- Server-Health.png
|   +-- Service-Health.png
|   |
|   +-- RoyalDB-AWS-Migration/
|
+-- .gitignore
+-- README.md
```

## Security and Scope

This project was developed within the isolated Royal Technology Solutions lab environment.

Infrastructure automation is designed primarily for read-only administrative visibility. The scripts query Active Directory, Windows services, operating system information, and system resources without automatically modifying user accounts, computer objects, services, or domain configuration.

The AWS database environment uses private networking, controlled security-group access, IAM roles, Systems Manager administration, SSL/TLS database connectivity, and PostgreSQL role-based access control.

Generated reports and screenshots contain lab-generated information and do not represent production customer data.

Sensitive information should never be committed to this repository, including:

- Passwords
- AWS access keys
- AWS secret keys
- Session tokens
- Private keys
- Full RDS endpoints
- AWS account identifiers
- Database credentials

## Technologies Used

### Microsoft & Infrastructure

- Windows Server 2025
- Active Directory Domain Services
- PowerShell 5.1
- Active Directory PowerShell Module
- Windows Management Instrumentation / CIM
- Windows Services

### Database

- PostgreSQL
- SQL
- `pg_dump`
- `pg_restore`
- PostgreSQL RBAC

### AWS

- Amazon EC2
- Amazon RDS for PostgreSQL
- Amazon S3
- AWS IAM
- AWS Systems Manager
- Amazon VPC
- Security Groups

## Skills Demonstrated

- Windows Server administration
- Active Directory administration
- PowerShell scripting and automation
- Infrastructure monitoring
- Systems troubleshooting
- PostgreSQL administration
- Relational database design
- Database migration
- Database validation
- SQL
- Role-based access control
- Least-privilege security
- AWS cloud infrastructure
- IAM permissions
- Private cloud networking
- Hybrid-cloud architecture
- Infrastructure documentation

## Project Direction

Royal Technology Solutions is being developed incrementally as a complete enterprise-style lab environment.

The long-term direction is to continue integrating the existing on-premises infrastructure with AWS services and progressively migrate appropriate workloads into a hybrid-cloud architecture while maintaining security, documentation, validation, and recoverability throughout each stage.

## Author

**LaVon Thomas**  
Systems & Infrastructure Engineer  
B.S. Computer Information Systems — Cybersecurity, Post University
