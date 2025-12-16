---
allowed-tools: Read, Grep, Glob, Bash
description: Security vulnerability assessment with OWASP focus
argument-hint: [file-or-directory]
---

## Security Scan: $ARGUMENTS

If no target specified, scan entire project.

### OWASP Top 10 Checklist

#### 1. Injection (SQL, NoSQL, OS, LDAP)
Search for:
- String concatenation in queries
- Unsanitized user input in commands
- Dynamic query construction

```
Pattern: execute|query|exec|system|eval|raw
```

#### 2. Broken Authentication
Check for:
- Hardcoded credentials
- Weak password policies
- Missing rate limiting
- Session management issues

#### 3. Sensitive Data Exposure
Look for:
- Unencrypted sensitive data
- Secrets in code or config
- Logging of sensitive info
- Missing HTTPS enforcement

#### 4. XML External Entities (XXE)
If XML processing exists:
- External entity references
- DTD processing enabled

#### 5. Broken Access Control
Check for:
- Missing authorization checks
- Direct object references
- Privilege escalation paths
- CORS misconfigurations

#### 6. Security Misconfiguration
Look for:
- Debug mode in production
- Default credentials
- Verbose error messages
- Missing security headers

#### 7. Cross-Site Scripting (XSS)
Search for:
- Unescaped user input in HTML
- `dangerouslySetInnerHTML`
- Template injection

#### 8. Insecure Deserialization
Check for:
- `pickle`, `yaml.load`, `JSON.parse` with untrusted data
- Object deserialization without validation

#### 9. Using Components with Known Vulnerabilities
Check:
- `npm audit` / `pip-audit` / `cargo audit`
- Outdated dependencies
- Known CVEs

#### 10. Insufficient Logging & Monitoring
Verify:
- Security events are logged
- Logs don't contain sensitive data
- Alerting exists for anomalies

### Output

```markdown
## Security Scan Results

### Critical
- [Finding with file:line and remediation]

### High
- [Finding with file:line and remediation]

### Medium
- [Finding with file:line and remediation]

### Low
- [Finding with file:line and remediation]

### Recommendations
- [Prioritized action items]
```
