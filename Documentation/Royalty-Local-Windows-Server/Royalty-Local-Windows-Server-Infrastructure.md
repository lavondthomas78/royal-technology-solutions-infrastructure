\# Royalty.Local — Windows Server 2025 Enterprise Infrastructure Lab



\*\*Engineer:\*\* LaVon Thomas  

\*\*Project:\*\* Royal Technology Solutions Infrastructure \& Cloud Engineering Lab  

\*\*Environment:\*\* Royalty.Local Enterprise Home Lab  

\*\*Platform:\*\* Windows Server 2025 / Oracle VirtualBox



\## Project Overview



Royalty.Local is a virtualized Windows Server enterprise infrastructure environment designed and implemented as the systems-engineering foundation of the broader Royal Technology Solutions lab.



The environment provides hands-on implementation and validation of core enterprise services including Active Directory Domain Services (AD DS), DNS, DHCP, Group Policy, file services, IIS web services, security monitoring, host firewall controls, intrusion detection, and backup infrastructure.



Rather than functioning as a collection of isolated virtual machines, Royalty.Local was developed as an integrated server environment in which identity, networking, security, storage, monitoring, and application services work together to support enterprise operations.



The lab provides practical experience across the complete infrastructure lifecycle:



\- Virtual machine deployment and configuration

\- Windows Server administration

\- Active Directory architecture

\- Identity and access management

\- DNS and DHCP administration

\- Group Policy management

\- File and SMB services

\- IIS web hosting

\- Network and host security

\- Intrusion detection

\- Infrastructure monitoring

\- Backup and recovery

\- Troubleshooting and service validation

\- Enterprise infrastructure documentation



\## Core Technologies



\- Windows Server 2025

\- Active Directory Domain Services (AD DS)

\- Domain Name System (DNS)

\- Dynamic Host Configuration Protocol (DHCP)

\- Group Policy

\- SMB file services

\- Internet Information Services (IIS)

\- Windows Defender Firewall

\- Snort IDS/IPS

\- PRTG Network Monitor

\- Veeam Backup \& Replication

\- PostgreSQL / RoyalDB

\- Oracle VirtualBox

\- PowerShell



\## Infrastructure Architecture



Royalty.Local uses a multi-server architecture designed to separate enterprise infrastructure roles across dedicated virtual machines. This approach provides hands-on experience with service isolation, centralized administration, dependency management, troubleshooting, and infrastructure resiliency.



\### Core Server Roles



The environment includes dedicated systems supporting:



\- Primary Active Directory Domain Services

\- Secondary domain controller services

\- DNS infrastructure

\- DHCP infrastructure

\- File services

\- IIS web services

\- Application services

\- PostgreSQL / RoyalDB database services

\- Print services

\- IDS/IPS security monitoring

\- Infrastructure monitoring

\- Backup and recovery



\### Active Directory and Identity Services



Active Directory Domain Services provides centralized identity and access management for the Royalty.Local environment.



The directory structure includes organizational units, domain users, security groups, computer objects, and Group Policy Objects used to organize and administer enterprise resources.



The environment demonstrates:



\- Domain-based centralized authentication

\- Organizational Unit (OU) design

\- User account administration

\- Security group administration

\- Group Policy management

\- Domain controller health validation

\- Role-based access concepts

\- Centralized Windows infrastructure administration



\### Network Services



DNS and DHCP provide the core network services required by domain-connected systems.



DNS supports name resolution and Active Directory service discovery, while DHCP provides centralized IPv4 address configuration to network clients. DHCP scopes and related network parameters were configured and validated as part of the environment.



These services demonstrate the dependencies between Active Directory, DNS, DHCP, client addressing, and enterprise application connectivity.



\## Enterprise Application and Data Services



\### File Services



The Royalty.Local environment includes Windows Server file services configured to provide centralized SMB-based storage and resource sharing.



File server implementation included:



\- SMB share configuration

\- Centralized network storage

\- Windows permissions and access controls

\- Domain-integrated resource access

\- File service validation



This provides practical experience managing shared enterprise resources while integrating file access with centralized identity services.



\### IIS Web Services



Internet Information Services (IIS) was implemented to provide Windows-based web hosting within the environment.



The IIS server was configured and validated as the web platform for the Royal Technology Solutions website, connecting the Windows Server infrastructure directly to the broader Royal Technology Solutions project.



Implementation activities included:



\- IIS role installation and configuration

\- Website deployment

\- Web service validation

\- Network connectivity testing

\- Troubleshooting web service availability



\### PostgreSQL and RoyalDB



The server environment also supports PostgreSQL database infrastructure used by RoyalDB.



RoyalDB serves as the relational database backend for Royal Technology Solutions service operations and supports structured data for customers, locations, devices, contracts, tickets, technicians, and technician assignments.



Database work includes:



\- PostgreSQL administration

\- Relational database implementation

\- Role-based access control

\- Integrity constraints

\- Backup and recovery

\- Database connectivity

\- Infrastructure integration



RoyalDB is also being extended into AWS as part of the larger Royal Technology Solutions hybrid-cloud architecture.



\## Security, Monitoring, and Recovery



\### Snort Intrusion Detection



A dedicated Snort IDS environment was implemented to provide network-based security monitoring and intrusion detection.



The implementation includes:



\- Snort IDS configuration

\- Network traffic inspection

\- Detection rule processing

\- Security event generation

\- Live detection testing

\- IDS alert validation



Testing confirmed that the IDS could observe network activity and generate alerts based on configured detection rules.



\### Windows Firewall Security Controls



Windows Defender Firewall policies were configured and tested to provide host-based network security controls within the Windows Server environment.



Firewall implementation included:



\- Inbound and outbound traffic controls

\- Rule configuration

\- Service-specific access controls

\- Traffic blocking

\- Connectivity testing

\- Verification of blocked communications



Testing was performed to confirm that configured firewall rules affected network traffic as intended.



\### Infrastructure Monitoring



The environment incorporates infrastructure monitoring to support visibility into server and network operations.



Monitoring capabilities provide experience with:



\- Service availability monitoring

\- Server health observation

\- Network visibility

\- Infrastructure troubleshooting

\- Operational monitoring concepts



\### Backup and Recovery



Backup infrastructure was implemented to support protection and recovery of enterprise systems and data.



The environment includes Veeam-based backup capabilities and dedicated backup storage supporting infrastructure protection and recovery testing.



Backup and recovery work includes:



\- Backup infrastructure configuration

\- Backup storage management

\- Protection of virtualized workloads

\- Recovery planning

\- Backup validation

\- Restoration and recovery testing



Together, monitoring, security controls, intrusion detection, and backup infrastructure provide operational safeguards for the Royalty.Local environment.



\## Implementation Evidence



The following screenshots document the configuration, administration, testing, and validation performed within the Royalty.Local environment.



\### Active Directory Domain Verification



!\[Active Directory Domain Verification](Evidence/01-active-directory-domain-verification.png)



\### DNS Service Verification



!\[DNS Service Verification](Evidence/02-dns-service-verification.png)



\### DHCP Service and Scope Verification



!\[DHCP Service and Scope Verification](Evidence/03-dhcp-service-and-scope-verification.png)



\### Domain Controller Health Verification



!\[Domain Controller Health Verification](Evidence/04-domain-controller-health-verification.png)



> \*\*Troubleshooting Note:\*\* The captured domain-controller health output includes a DNS-related warning. The screenshot is intentionally retained as operational evidence rather than presenting the environment as having produced a perfectly clean diagnostic result.



\### Active Directory OU Structure



!\[Active Directory OU Structure](Evidence/05-active-directory-ou-structure.png)



\### Active Directory Users



!\[Active Directory Users](Evidence/06-active-directory-users.png)



\### Active Directory Security Groups



!\[Active Directory Security Groups](Evidence/07-active-directory-security-groups-1.png)



!\[Active Directory Security Groups](Evidence/08-active-directory-security-groups-2.png)



\### Group Policy Objects



!\[Group Policy Objects](Evidence/09-group-policy-objects.png)



\### File Server and SMB Configuration



!\[File Server SMB Configuration](Evidence/10-file-server-smb-configuration.png)



\### IIS Web Server Verification



!\[IIS Web Server Verification](Evidence/11-iis-web-server-verification.png)



\### Centralized Log Management



!\[Centralized Log Management](Evidence/12-2%20Lab%20Manage%20Log%20Files.png)



\### Royal Technology Solutions Website



!\[Royal Technology Solutions Website](Evidence/12-royal-technology-solutions-website.png)



\### Snort IDS Live Detection



!\[Snort IDS Live Detection](Evidence/13-snort-ids-live-detection.png)



\### Snort IDS Configuration



!\[Snort IDS Configuration](Evidence/14-snort-ids-configuration.png)



\### Windows Firewall Security Policy



!\[Windows Firewall Security Policy](Evidence/15-windows-firewall-security-policy.png)



\### Windows Firewall Block Verification



!\[Windows Firewall Block Verification](Evidence/16-windows-firewall-block-verification.png)



\### Backup Server Storage Configuration



!\[Backup Server Storage Configuration](Evidence/17-backup-server-storage-configuration.png)



\## Engineering Skills Demonstrated



Royalty.Local demonstrates hands-on systems and infrastructure engineering across multiple enterprise technology domains.



Key competencies demonstrated through the project include:



\- Windows Server 2025 administration

\- Active Directory Domain Services administration

\- Enterprise identity and access management

\- DNS and DHCP configuration and troubleshooting

\- Organizational Unit and security group design

\- Group Policy administration

\- SMB file services and centralized storage

\- IIS web server deployment and administration

\- PostgreSQL database infrastructure

\- Windows host firewall configuration and validation

\- Snort intrusion detection and security monitoring

\- Centralized logging and operational visibility

\- Infrastructure monitoring

\- Veeam backup and recovery

\- Virtual machine deployment and administration

\- Service validation and troubleshooting

\- Infrastructure security hardening

\- Technical documentation



\## Project Evolution



Royalty.Local represents the Windows Server and systems-engineering layer of the larger Royal Technology Solutions infrastructure project.



The broader architecture is being developed incrementally across:



\*\*Enterprise Networking → Windows Server Infrastructure → Cybersecurity → RoyalDB → Automation → AWS → Hybrid Cloud\*\*



This approach allows infrastructure components to be designed, implemented, tested, documented, and then progressively integrated with cloud services while preserving the on-premises environment as a practical hybrid-cloud engineering lab.



\---



\*\*Royal Technology Solutions — Infrastructure \& Cloud Engineering Lab\*\*  

Designed, built, tested, and documented by \*\*LaVon Thomas\*\*

